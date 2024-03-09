import 'dart:io';

/// Environment variables and shared app constants.
abstract class Constants {
  static const String apiKey = String.fromEnvironment('API_KEY', defaultValue: 'NOT SET');
  static const String password = String.fromEnvironment('PASSWORD', defaultValue: 'NOT SET');
  static const bool isProduction = bool.fromEnvironment('dart.vm.product'); // https://github.com/flutter/flutter/issues/4014#issuecomment-429910252

  static get baseAddress {
    String theBaseAddress = const String.fromEnvironment('BASE_ADDRESS', defaultValue: 'NOT SET');

    if (theBaseAddress != 'NOT SET') {
      return theBaseAddress;
    }

    if (Platform.isIOS) {
      return "http://localhost:8080";
    } else if (Platform.isAndroid) {
      return "http://10.0.2.2:8080";
    } else {
      throw Exception('BASE_ADDRESS environment variable not set and platform not recognized.');
    }
  }
}
