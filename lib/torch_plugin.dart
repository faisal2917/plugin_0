
import 'torch_plugin_platform_interface.dart';

class TorchPlugin {
  Future<String?> getPlatformVersion() {
    return TorchPluginPlatform.instance.getPlatformVersion();
  }
}
