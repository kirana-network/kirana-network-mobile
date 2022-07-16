// http://frontendcollisionblog.com/javascript/2015/12/26/using-nodejs-to-upload-app-to-google-play.html
var google = require('googleapis');
const yaml = require('js-yaml');
const fs = require('fs');
const _ = require('lodash');

const key = require('./key.json');
var version = null;
try {
    let fileContents = fs.readFileSync('pubspec.yaml', 'utf8');
    let data = yaml.safeLoad(fileContents);

    version = data.version.split("+")[0];
    console.log(version);
} catch (e) {
    console.log(e);
}
var RELEASE_NOTES = null;
try {
    RELEASE_NOTES = fs.readFileSync(process.env.RELEASE_NOTES_FILENAME, 'utf8');
}
catch (e) { console.log(e) }

// any unique id will do; a timestamp is easiest
var editId = new Date().getTime().toString();

// editing "scope" allowed for OAuth2
var scopes = [
    'https://www.googleapis.com/auth/androidpublisher'
];

const packageName = 'com.fleetonroute.mobile';

// here, we'll initialize our client
var OAuth2 = google.Auth.OAuth2Client;
var oauth2Client = new OAuth2();
var jwtClient = new google.Auth.JWT(key.client_email, null, key.private_key, scopes, null);
var play = new google.androidpublisher_v3.Androidpublisher({
    version: 'v3',
    auth: oauth2Client,
    params: {
        // default options
        // this is the package name for your initial app you've already set up on the Play Store
        packageName
    },
    headers: {
        "Connection": "keep-alive"
    }
});

// google.options({ auth: oauth2Client });

/**
 *  Sets our authorization token and begins an edit transaction.
 */
function startEdit() {
    return new Promise(function (resolve, reject) {
        // get the tokens
        jwtClient.authorize(function (err, tokens) {
            if (err) {
                console.log(err);
                return;
            }

            // set the credentials from the tokens
            oauth2Client.setCredentials(tokens);

            play.edits.insert({
                resource: {
                    id: editId,
                    // this edit will be valid for 10 minutes
                    expiryTimeSeconds: 600
                }
            }, function (err, edit) {
                if (err || !edit) {
                    reject(err);
                }

                resolve({
                    edit: edit
                });
            });
        });
    });
}

/**
 *  Stages an upload of the AAB (but doesn't actually upload anything)
 */
function upload(data) {
    console.log("started upload()", data)
    var edit = data.edit.data;
    var aab = data.aab;

    return new Promise(function (resolve, reject) {
        play.edits.bundles.upload({
            editId: edit.id,
            packageName,
            media: {
                mimeType: 'application/octet-stream',
                body: aab
            }
        }, function (err, res) {
            if (err || !res) {
                reject(err);
            }

            // pass any data we care about to the next function call
            resolve(_.omit(_.extend(data, { uploadResults: res }), 'aab'));
        });
    });
}

/**
 *  Sets our track (beta, production, etc.)
 */
function setTrack(data) {
    console.log("started setTrack()", data)
    var edit = data.edit.data;
    var track = 'internal';

    return new Promise(function (resolve, reject) {
        play.edits.tracks.update({
            editId: edit.id,
            track: track,
            packageName,
            resource: {
                track,
                releases: [{
                    name: version + "+" + process.env.RELEASE_NAME,
                    status: "completed",
                    versionCodes: [data.uploadResults.data.versionCode],
                    releaseNotes: [{
                        "language": "en-GB",
                        "text": RELEASE_NOTES || "ReleaseNotesMissing"
                    }]
                }]
            }
        }, function (err, res) {
            if (err || !res) {
                reject(err);
            }

            resolve(_.extend(data, { setTrackResults: res }));
        });
    });

}

/**
 *  Commits our edit transaction and makes our changes live.
 */
function commitToPlayStore(data) {
    console.log("started commitToPlayStore()", data)
    return new Promise(function (resolve, reject) {
        play.edits.commit({
            packageName,
            editId: data.edit.data.id
        }, function (err, res) {
            if (err || !res) {
                reject(err);
            }

            resolve(_.extend(data, { commitToPlayStoreResults: res }));
        });
    });
}

const pathToAAB = process.env.AAB_FILENAME;
console.log("pathToAAB", pathToAAB);
// "open" our edit
startEdit()
    .then(function (data) {
        var aab = require('fs').createReadStream(pathToAAB); //createReadStream

        // stage the upload (doesn't actually upload anything)
        return upload({
            edit: data.edit,
            aab: aab
        });

    }).then(function (data) {
        // set our track
        return setTrack(data);
    }).then(function (data) {
        // commit our changes
        return commitToPlayStore(data);

    })
    .then(function (data) {
        // log our success!
        console.log('Successful upload:', data);
    })
    .catch(function (err) {
        console.log(err);
        process.exit(-1);
    });
