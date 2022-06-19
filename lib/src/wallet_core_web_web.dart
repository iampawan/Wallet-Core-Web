@JS('window.dartInteropt.wallet_core_web')
library wallet_core_web;

import 'dart:async';
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:js/js.dart';

import '../wallet_core_web_platform_interface.dart';
import 'dart_interopt_check.dart';

// Signatures should be base58 encoded

@JS('create')
external Object create();

Completer<void>? _initalized;

/// Initalizes the library.
///
/// This function should be the first to be called before attemting to
/// use any other function. Subsequent calles to this function are no-ops.
Future<void> initWalletCore() async {
  if (_initalized == null) {
    _initalized = Completer<void>();
    await initDartInteropt('wallet_core_web', 'loader.js');
    _initalized!.complete();
  }
}

/// A web implementation of the WalletCoreWebPlatform of the WalletCoreWeb plugin.
class WalletCoreWebWeb extends WalletCoreWebPlatform {
  /// Constructs a WalletCoreWebWeb
  WalletCoreWebWeb();

  static void registerWith(Registrar registrar) {
    WalletCoreWebPlatform.instance = WalletCoreWebWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
