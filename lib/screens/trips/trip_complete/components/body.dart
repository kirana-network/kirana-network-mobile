import 'dart:convert';
import 'dart:io';

import 'package:fleetonrouteapi/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:flutter_background_service_ios/flutter_background_service_ios.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kirana_network_mobile/components/buttons.dart';
import 'package:kirana_network_mobile/core/app_state.dart';
import 'package:kirana_network_mobile/injection_container.dart';
import 'package:kirana_network_mobile/screens/login/components/form_error.dart';
import 'package:kirana_network_mobile/screens/trips/trips_screen/trips_screen.dart';
import 'package:kirana_network_mobile/size_config.dart';
import 'package:kirana_network_mobile/theme.dart';
import 'package:flutter_background_service/flutter_background_service.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  _BodyState();
  late String recipientName;
  late PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  String error = "";
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    TripModel trip = arguments["trip"];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              trip.address.toUpperCase(),
              style: screenHeadingTextStyle().merge(TextStyle(
                color: accentColor,
              )),
              textAlign: TextAlign.center,
            ),
            Text(
              "Complete this delivery with the recipient name or take a proof of delivery picture instead",
              style: screenSubTitleTextStyle(),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            _imageFile == null
                ? buildNameFormField()
                : Image.file(
                    File(_imageFile.path),
                    width: getProportionateScreenWidth(300),
                    height: getProportionateScreenHeight(300),
                    fit: BoxFit.contain,
                  ),
            SizedBox(height: getProportionateScreenHeight(30)),
            error.isEmpty
                ? Container()
                : Column(children: [
                    FormError(error: error),
                    SizedBox(height: getProportionateScreenHeight(30)),
                  ]),
            BigButton(
              text: "Complete Delivery",
              onPressed: () async {
                try {
                  await doCompleteDelivery(trip);
                } catch (caughtError) {
                  final err = jsonDecode((caughtError as dynamic).message);
                  if (err["message"] == "") {
                    err["message"] = "Unable to Complete Delivery";
                  }
                  setState(() => error = err["message"]);
                }
              },
            ),
            _imageFile == null
                ? IconBigButton(
                    text: "Proof of Delivery",
                    onPressed: () {
                      _onImageButtonPressed(ImageSource.camera,
                          context: context);
                    },
                    icon: Icon(Icons.camera_alt))
                : Container()
          ],
        ),
      ),
    );
  }

  void _onImageButtonPressed(ImageSource source,
      {required BuildContext context}) async {
    try {
      final pickedFile = await _picker.getImage(
          source: source,
          preferredCameraDevice: CameraDevice.rear,
          maxHeight: 1080,
          maxWidth: 1080);
      setState(() {
        error = "";
        _imageFile = pickedFile!;
        print("imageFile $_imageFile ${_imageFile.toString()}");
      });
    } catch (e) {
      setState(() {
        error = e.toString();
      });
    }
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (newValue) => recipientName = newValue,
      decoration: InputDecoration(
        labelText: "Recipient name",
        hintText: "Enter the recipient name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  doCompleteDelivery(TripModel trip) async {
    final type = _imageFile != null
        ? TripProofOfDeliveryModelTypeEnum.PHOTO
        : TripProofOfDeliveryModelTypeEnum.NAME;

    final photofile = type == TripProofOfDeliveryModelTypeEnum.PHOTO
        ? await MultipartFile.fromPath("photofile", _imageFile.path)
        : null;
    final response = await sl<TripsApi>().uploadProofOfDelivery(
      trip.id,
      type.toString(),
      photofile: photofile,
      recipientName: recipientName,
    );

    trip.tripStatus = TripModelTripStatusEnum.COMPLETED;
    await sl<TripsApi>().updateTrip(trip.id, trip);

    await sl<AppState>().appSharedPreferences.clearActiveTrip();
    // FlutterBackgroundService().sendData({"action": "stopService"});

    var service = FlutterBackgroundService();
    if (service is AndroidServiceInstance) {
      (service as AndroidServiceInstance).stopSelf();
    }

    if (service is IOSServiceInstance) {
      (service as IOSServiceInstance).stopSelf();
    }

    Navigator.pushReplacementNamed(context, TripsScreen.routeName);
  }
}
