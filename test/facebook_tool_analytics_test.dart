import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
//import 'package:facebook_tool_analytics/facebook_tool_analytics.dart';

void main() {
  const MethodChannel channel = MethodChannel('facebook_tool_analytics');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await FacebookToolAnalytics.platformVersion, '42');
  // });
}
