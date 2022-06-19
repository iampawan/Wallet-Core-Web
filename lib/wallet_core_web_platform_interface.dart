import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'wallet_core_web_method_channel.dart';

abstract class WalletCoreWebPlatform extends PlatformInterface {
  /// Constructs a WalletCoreWebPlatform.
  WalletCoreWebPlatform() : super(token: _token);

  static final Object _token = Object();

  static WalletCoreWebPlatform _instance = MethodChannelWalletCoreWeb();

  /// The default instance of [WalletCoreWebPlatform] to use.
  ///
  /// Defaults to [MethodChannelWalletCoreWeb].
  static WalletCoreWebPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WalletCoreWebPlatform] when
  /// they register themselves.
  static set instance(WalletCoreWebPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
