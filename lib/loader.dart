import 'dart:html';
import 'dart:js';
import 'dart:js_util';

import 'package:wallet_core_web/wallet_core.dart';

Future<void> loadJs() async {
  Element? loader = window.document.getElementById('wallet-core-loader');
  if (loader != null) {
    print('Already loaded');
    //onRuntimeInitialized();
    return;
  }

  final module = JsObject.jsify({});
  module['onRuntimeInitialized'] = allowInterop(onRuntimeInitialized);
  context['Module'] = module;

  loader = DivElement()..id = 'wallet-core-loader';
  loader.append(ScriptElement()..src = '/wallet-core/wallet-wasm-core.js');
  loader.append(ScriptElement()..src = '/wallet-core/wallet_pb.js');
  loader.append(ScriptElement()..src = '/wallet-core/encoding.js');
  document.body!.append(loader);
}

void onRuntimeInitialized() {
  print('WASM has been loaded');
  var wallet = HDWallet(256, "password");
  print('wallet: $wallet');
  wallet.delete();
}
