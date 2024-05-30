import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'torch_plugin_method_channel.dart';

abstract class TorchPluginPlatform extends PlatformInterface {
  /// Constructs a TorchPluginPlatform.
  TorchPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static TorchPluginPlatform _instance = MethodChannelTorchPlugin();

  /// The default instance of [TorchPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelTorchPlugin].
  static TorchPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TorchPluginPlatform] when
  /// they register themselves.
  static set instance(TorchPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
