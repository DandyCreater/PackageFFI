
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/services.dart';

import 'native_revolution_platform_interface.dart';

class NativeRevolution {
  static const MethodChannel _channel = MethodChannel('native_revolution');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  NativeRevolution() {
    final DynamicLibrary NativeRevolutionLib = Platform.isAndroid
        ? DynamicLibrary.open('libnative_revolution.so')
        : DynamicLibrary.process();

    final int Function(int x, int y) NativeRevolution = NativeRevolutionLib
        .lookup<NativeFunction<Int32 Function(Int32, Int32)>>('native_revolution')
        .asFunction();
        
  }

}


