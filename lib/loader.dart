import 'dart:convert';
import 'dart:html';
import 'dart:js';
import 'package:wallet_core_web/proto.dart';
import 'package:wallet_core_web/wallet_core.dart';

Future<void> loadJs() async {
  Element? loader = window.document.getElementById('wallet-core-loader');
  if (loader != null) {
    print('Already loaded');
    onRuntimeInitialized();
    return;
  }

  loader = DivElement()..id = 'wallet-core-loader';
  loader.append(ScriptElement()
    ..src =
        '/node_modules/@trustwallet/wallet-core/dist/generated/core_proto.js');
  loader.append(ScriptElement()
    ..src = '/node_modules/@trustwallet/wallet-core/dist/lib/wallet-core.js');

  document.body!.append(loader);
  final module = JsObject.jsify({});
  module['onRuntimeInitialized'] = allowInterop(onRuntimeInitialized);
  context['Module'] = module;
}

void onRuntimeInitialized() {
  print('WASM has been loaded');
  var wallet = HDWallet.create(256, "password");
  print('wallet: ${wallet.mnemonic()}');
  wallet.delete();

  final key = HexCoding.decode(
      "5caa3a74154cee16bd1b570a1330be46e086474ac2f4720530662ef1a469662c");
  final iv = HexCoding.decode("89ef1d6728bac2f1dcde2ef9330d2bb8");
  final cipher = HexCoding.decode(
      "1b3db3674de082d65455eba0ae61cfe7e681c8ef1132e60c8dbd8e52daf18f4fea42cc76366c83351dab6dca52682ff81f828753f89a21e1cc46587ca51ccd353914ffdd3b0394acfee392be6c22b3db9237d3f717a3777e3577dd70408c089a4c9c85130a68c43b0a8aadb00f1b8a8558798104e67aa4ff027b35d4b989e7fd3988d5dcdd563105767670be735b21c4");

  final decrypted =
      utf8.decode(AES.decryptCBC(key, cipher, iv, AESPaddingMode.pkcs7));
  const expected =
      '{"id":1554098597199736,"jsonrpc":"2.0","method":"wc_sessionUpdate","params":[{"approved":false,"chainId":null,"accounts":null}]}';

  print('blah: ${expected == decrypted} -> $decrypted');

  var tx = EthereumTransaction();
  var transfer = EthereumTransfer();
  transfer.amount(HexCoding.decode("0348bca5a16000"));
  tx.transfer(transfer);

  print('tx: ${tx.toJSON()}');
}
