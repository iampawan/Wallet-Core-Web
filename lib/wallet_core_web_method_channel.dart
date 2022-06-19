import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'wallet_core_web_platform_interface.dart';

/// An implementation of [WalletCoreWebPlatform] that uses method channels.
class MethodChannelWalletCoreWeb extends WalletCoreWebPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('wallet_core_web');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
