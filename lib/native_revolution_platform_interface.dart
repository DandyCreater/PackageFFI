import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'native_revolution_method_channel.dart';

abstract class NativeRevolutionPlatform extends PlatformInterface {
  /// Constructs a NativeRevolutionPlatform.
  NativeRevolutionPlatform() : super(token: _token);

  static final Object _token = Object();

  static NativeRevolutionPlatform _instance = MethodChannelNativeRevolution();

  /// The default instance of [NativeRevolutionPlatform] to use.
  ///
  /// Defaults to [MethodChannelNativeRevolution].
  static NativeRevolutionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NativeRevolutionPlatform] when
  /// they register themselves.
  static set instance(NativeRevolutionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
