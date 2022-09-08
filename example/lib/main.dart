import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:native_revolution/native_revolution.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  
  const MyApp({Key? key, }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int result = 0;
  static const MethodChannel _channel = MethodChannel('native_revolution');
  final DynamicLibrary nativeAddLib = Platform.isAndroid
        ? DynamicLibrary.open('libnative_revolution.so')
        : DynamicLibrary.process();
  String _platformVersion = 'Unknown';
  int counter = 0;
  
  
  _cobaNativ(int firstnum, int secondnum){
    final int Function(int x, int y) nativeAdd = nativeAddLib
        .lookup<NativeFunction<Int32 Function(Int32, Int32)>>('native_add')
        .asFunction();
    
    result = nativeAdd(firstnum,secondnum);
    return result;
  }
     
  @override
  void initState() {
    // TODO: implement initState
    _cobaNativ(5, 10);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         body: Column(
           children: [
             SizedBox(
              height: 100,
              width: double.infinity,
        child: Text("INI HASIL TESTING FFI : $result"),
        ),
           ],
         ),
      ),
    );
  }
}