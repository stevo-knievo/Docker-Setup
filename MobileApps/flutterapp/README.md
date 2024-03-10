# Flutter app
Showcase: Connect to local web services from Android emulators and iOS simulators with Flutter environment variables

## Local machine address
The Android emulator and iOS simulator both provide access to web services running over HTTP or HTTPS on your local machine. However, the local machine address is different for each.

- Android: http://10.0.2.2:<port>/api/todoitems/ or https://10.0.2.2:<port>/api/todoitems/
- iOS: http://localhost:<port>/api/todoitems/ or https:/localhost:<port>/api/todoitems/

## Flutter environment variables
From flutter 3.13, there is native support for .env files. This repo has been edited to reflect the changes.

### Define variables
```shell
flutter run --dart-define-from-file=.env
```

## Dev dependencies
- Flutter SDK 3.19.3 with Dart 3.3.1 from 2024-03-07
- gradle 7.6.3 (<= Java 19, more infos [here](https://docs.gradle.org/current/userguide/compatibility.html#java))
- Java 11 LTS >=< Java 19

### Flutter / Dart
Use the Flutter SDK 3.19.3, Dart 3.3.1, DevTools 2.31.1 from 2024-03-07
- [macos - arm64](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.19.3-stable.zip)
- [macos - x64](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.19.3-stable.zip)


# More infos
- [Connect to local web services from Android emulators and iOS simulators](https://learn.microsoft.com/en-us/dotnet/maui/data-cloud/local-web-services?view=net-maui-8.0#local-machine-address)

# More infos "Environmental Variables in Flutter"
- [The Right Way to Set Environment Variables with Compile-Time Variables](https://itnext.io/secure-your-flutter-project-the-right-way-to-set-environment-variables-with-compile-time-variables-67c3163ff9f4)
- [How to use Environmental Variables in Flutter](https://www.sandromaglione.com/articles/how-to-use-environmental-variables-in-flutter)
- [Setting environment variables in Flutter](https://stackoverflow.com/questions/44250184/setting-environment-variables-in-flutter)