import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'native_revolution_platform_interface.dart';

/// An implementation of [NativeRevolutionPlatform] that uses method channels.
class MethodChannelNativeRevolution extends NativeRevolutionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('native_revolution');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
