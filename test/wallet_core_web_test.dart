import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:wallet_core_web/wallet_core_web_method_channel.dart';
import 'package:wallet_core_web/wallet_core_web_platform_interface.dart';

class MockWalletCoreWebPlatform
    with MockPlatformInterfaceMixin
    implements WalletCoreWebPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WalletCoreWebPlatform initialPlatform = WalletCoreWebPlatform.instance;

  test('$MethodChannelWalletCoreWeb is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWalletCoreWeb>());
  });

  test('getPlatformVersion', () async {
    // WalletCoreWeb walletCoreWebPlugin = WalletCoreWeb();
    // MockWalletCoreWebPlatform fakePlatform = MockWalletCoreWebPlatform();
    // WalletCoreWebPlatform.instance = fakePlatform;
    //
    // expect(await walletCoreWebPlugin.getPlatformVersion(), '42');
  });
}
