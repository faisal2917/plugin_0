

import 'package:flutter/services.dart';

class TorchPlugin {
  static const MethodChannel _channel=  MethodChannel('torch_plugin');
  Future<bool> onTorch() async {
    final bool torch= await _channel.invokeMethod('turnOnTorch');
    print('torch value in plugin.....................$torch');
    return torch ;
  }
  Future<bool> offTorch() async {
    final bool torch= await _channel.invokeMethod('turnOffTorch');

    return torch ;
  }
}
