import 'package:flutter/services.dart';

class TorchPlugin {
  static const MethodChannel _channel=  MethodChannel('torch_plugin');
  Future<bool> toggleTorch(bool isTorchOn) async {
    final bool torch= await _channel.invokeMethod('toggleTorch', {'isOn': isTorchOn});
    return torch ;
  }
}