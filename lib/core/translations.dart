import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class Translations {
  Translations(this.locale);
  static String title = "FleetOnRoute";
  final Locale locale;

  static Translations? of(BuildContext context) {
    return Localizations.of<Translations>(context, Translations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'TITLE': title,
      'SIGN_IN_WITH_EMAIL': "Sign in with email",
      'SIGN_IN_WITH_GOOGLE': "Sign in with Google",
      "WARNING_DRIVING_WHILE_USING_A_MOBILE_PHONE":
          "Warning: Driving while using a mobile phone is dangerous and might be illegal according to your local laws.",
      "START_GPS": "Start GPS",
      "MAP": "Map",
      "MESSAGES": "Messages",
      "PROFILE": "Profile",
      "UPDATE_YOUR_PROFILE": "Update your profile",
      "SETUP_YOUR_PROFILE": "Update your profile",
      "PERMISSIONS": "Permissions",
      "GPS_UNIT": "GPS Unit",
      "SET_UP_YOUR_DEVICE_NAME": "Give your GPS Unit a name",
      "DEVICE_NAME": "Device Name",
      "DELIVERIES": "Deliveries",
      "INVITATIONS": "Invitations",
      "TRIPS": "Trips",
      "START_DELIVERY": "Start Delivery",
      "STOP_DELIVERY": "Stop Delivery",
      "COMPLETE_DELIVERY": "Complete Delivery",
      "DIRECTIONS": "Directions",
      "SHARE": "Share",
      "PRIVACY_POLICY": "Privacy Policy",
      "OKAY": "Ok",
      "NO_INVITATIONS": "There are no invitations",
      "NO_SCHEDULED_TRIPS": "There are no scheduled trips",
      "NOT_PART_OF_ORGANIZATIONS": "You are not part of any organization",
      "NO_PERMISSIONS": "Location Service needs to be enabled for this app",
      "ORGANIZATION_PERMISSION_HEADER":
          "Which organizations do you want to share your location with?",
      "BACKGROUND_LOCATION_PERMISSION_REQUIRED":
          "Location permission is required",
      "BACKGROUND_LOCATION_PERMISSION_REQUIRED_MESSAGING_1":
          "FleetOnRoute requires access to your location to provide updates to the clients and organization.",
      "APP_UPDATE_AVAILABLE": "An update is available",
      "APP_UPDATE_IS_REQUIRED":
          "Updating your app is required before continuing",
      "APP_UPDATE_IS_RECOMMENDED": "Updating your app is recommended",
      "NEXT": "Next",
      "YOU_ALREADY_HAVE_A_GOOGLE_ACCOUNT":
          "You already have an account. Sign in with Google to continue",
      "UPDATE": "Update",
      "IGNORE_FOR_NOW": "Ignore for now",
      "NO_TRIPS_FOUND": "There are no trips for today",
      "CANT_FIND_ANY_TRIPS_TRY_CHANGING_ORGANIZATION":
          "Can't find any trips? Try switching the organization in the profile tab"
    }
  };

  String call(String key) {
    return _localizedValues[locale.languageCode]![key] ?? key;
  }

  // String get title {
  //   return _localizedValues[locale.languageCode]['title'];
  // }
}

class TranslationsDelegate extends LocalizationsDelegate<Translations> {
  const TranslationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<Translations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<Translations>(Translations(locale));
  }

  @override
  bool shouldReload(TranslationsDelegate old) => false;
}
