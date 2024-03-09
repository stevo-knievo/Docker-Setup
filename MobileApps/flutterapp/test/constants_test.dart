import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapp/constants.dart';
import 'package:mockito/mockito.dart';

// class MockPlatformService extends Mock implements PlatformService {}

void main() {
  group('Constants', () {
    test('apiKey default value is NOT SET', () {
      expect(Constants.apiKey, 'NOT SET');
    });

    test('password default value is NOT SET', () {
      expect(Constants.password, 'NOT SET');
    });

    // Mocking platform scenarios for baseAddress
    // test('baseAddress returns correct address for Android', () {
    //   // Assuming PlatformService is injected or can be set in Constants
    //   var mockPlatformService = MockPlatformService();
    //   when(mockPlatformService.getPlatform()).thenReturn(PlatformType.android);

    //   Constants.platformService = mockPlatformService; // Hypothetical way to set the mocked service
    //   expect(Constants.baseAddress, "10.0.2.2:8080");
    // });

    // test('baseAddress returns correct address for iOS', () {
    //   var mockPlatformService = MockPlatformService();
    //   when(mockPlatformService.getPlatform()).thenReturn(PlatformType.iOS);

    //   Constants.platformService = mockPlatformService;
    //   expect(Constants.baseAddress, "localhost:8080");
    // });

    // test('baseAddress throws UnsupportedError for unsupported platforms', () {
    //   var mockPlatformService = MockPlatformService();
    //   when(mockPlatformService.getPlatform()).thenReturn(PlatformType.other); // Assuming 'other' is an enum value for unsupported platforms

    //   Constants.platformService = mockPlatformService;
    //   expect(() => Constants.baseAddress, throwsUnsupportedError);
    // });
  });
}