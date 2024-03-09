# Flutter app
Showcase: Connect to local web services from Android emulators and iOS simulators with Flutter environment variables

## Local machine address
The Android emulator and iOS simulator both provide access to web services running over HTTP or HTTPS on your local machine. However, the local machine address is different for each.

- Android: http://10.0.2.2:<port>/api/todoitems/ or https://10.0.2.2:<port>/api/todoitems/
- iOS: http://localhost:<port>/api/todoitems/ or https:/localhost:<port>/api/todoitems/

## Flutter environment variables
**Since this flutter project is prior Flutter 3.13 there is no native support for .env files yet!!.**

### Define variables
```shell
flutter run --dart-define=SOME_VAR=SOME_VALUE --dart-define=OTHER_VAR=OTHER_VALUE
```

## Dev dependencies
- Flutter SDK 3.0.0 with Dart 2.17.0 from 2022-11-05
- gradle 7.1.2 (<= Java 16, more infos [here](https://docs.gradle.org/current/userguide/compatibility.html#java))
- Java 11 LTS

### Flutter / Dart
Use the Flutter SDK 3.0.0 with Dart 2.17.0 from 2022-11-05.
- [macos - arm64](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.0.0-stable.zip)
- [macos - x64](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.0.0-stable.zip)


# More infos
- [Connect to local web services from Android emulators and iOS simulators](https://learn.microsoft.com/en-us/dotnet/maui/data-cloud/local-web-services?view=net-maui-8.0#local-machine-address)

# More infos "Environmental Variables in Flutter"
- [The Right Way to Set Environment Variables with Compile-Time Variables](https://itnext.io/secure-your-flutter-project-the-right-way-to-set-environment-variables-with-compile-time-variables-67c3163ff9f4)
- [How to use Environmental Variables in Flutter](https://www.sandromaglione.com/articles/how-to-use-environmental-variables-in-flutter)
- [Setting environment variables in Flutter](https://stackoverflow.com/questions/44250184/setting-environment-variables-in-flutter)