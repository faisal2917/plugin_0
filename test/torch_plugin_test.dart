import 'package:flutter_test/flutter_test.dart';
import 'package:torch_plugin/torch_plugin.dart';
import 'package:torch_plugin/torch_plugin_platform_interface.dart';
import 'package:torch_plugin/torch_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTorchPluginPlatform
    with MockPlatformInterfaceMixin
    implements TorchPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TorchPluginPlatform initialPlatform = TorchPluginPlatform.instance;

  test('$MethodChannelTorchPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTorchPlugin>());
  });

  test('getPlatformVersion', () async {
    TorchPlugin torchPlugin = TorchPlugin();
    MockTorchPluginPlatform fakePlatform = MockTorchPluginPlatform();
    TorchPluginPlatform.instance = fakePlatform;

    expect(await torchPlugin.getPlatformVersion(), '42');
  });
}
