import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:wallet_core_web/loader.dart';

import 'proto.dart';
import 'wallet_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadJs();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(useMaterial3: true),
      home: const Home(),
    );
  }
}

@immutable
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? mnemonic, rawTx;
  Uint8List? privKey;
  @override
  void initState() {
    super.initState();
  }

  void createWallet() {
    final wallet = HDWallet.create(256, "password");
    privKey = wallet.getKey(CoinType.ethereum, "m/44'/60'/0'/0/0").data();
    mnemonic = wallet.mnemonic();
    wallet.delete();
    setState(() {});
  }

  void signTx() {
    final input = SigningInput();
    input.toAddress = "0x6b175474e89094c44da98b954eedeac495271d0f";
    input.chainId = HexCoding.decode("0x1");
    input.nonce = HexCoding.decode("0x0");
    input.txMode = 1;
    input.maxInclusionFeePerGas = HexCoding.decode("0077359400");
    input.maxFeePerGas = HexCoding.decode("00b2d05e00");

    input.gasLimit = HexCoding.decode("0130B9");
    input.privateKey = HexCoding.decode(
        "0x608dcb1742bb3fb7aec002074e3420e4fab7d00cced79ccdac53ed5b27138151");
    final erc = ERC20Transfer();
    erc.amount = HexCoding.decode("1bc16d674ec80000");
    erc.to = "0x5322b34c88ed0691971bf52a7047448f0f4efc84";
    input.transaction = Transaction()..erc20Transfer = erc;
    final encoded = SigningInput.encode(input).finish();
    final outputData = AnySigner.sign(encoded, CoinType.ethereum);
    final output = SigningOutput.decode(outputData);
    rawTx = HexCoding.encode(output.encoded);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Wallet Core Web'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: createWallet,
                child: const Text("Create Wallet"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Mnemonic will be displayed here:"),
              const SizedBox(
                height: 10,
              ),
              if (mnemonic != null) Text(mnemonic!),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: signTx,
                child: const Text("Sign Ethereum Tx"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Raw TX Data: "),
              const SizedBox(
                height: 10,
              ),
              if (rawTx != null) Text(rawTx!),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
