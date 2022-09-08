import 'package:flutter_test/flutter_test.dart';
import 'package:native_revolution/native_revolution.dart';
import 'package:native_revolution/native_revolution_platform_interface.dart';
import 'package:native_revolution/native_revolution_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNativeRevolutionPlatform
    with MockPlatformInterfaceMixin
    implements NativeRevolutionPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  // final NativeRevolutionPlatform initialPlatform = NativeRevolutionPlatform.instance;

  // test('$MethodChannelNativeRevolution is the default instance', () {
  //   expect(initialPlatform, isInstanceOf<MethodChannelNativeRevolution>());
  // });

  // test('getPlatformVersion', () async {
  //   NativeRevolution nativeRevolutionPlugin = NativeRevolution();
  //   MockNativeRevolutionPlatform fakePlatform = MockNativeRevolutionPlatform();
  //   NativeRevolutionPlatform.instance = fakePlatform;

  //   expect(await nativeRevolutionPlugin.getPlatformVersion(), '42');
  // });
}
