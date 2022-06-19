import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_core_web/wallet_core_web_web.dart';

import 'wasm/wasm_loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initWalletCore();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  WasmLoader? loader;
  // final _walletCoreWebPlugin = WalletCoreWeb();

  @override
  void initState() {
    super.initState();
    // _loadWasm();
    initPlatformState();
  }

  _loadWasm() async {
    loader = WasmLoader.loadFromAsset('assets/wallet-wasm-core.wasm');
    final isLoaded = await loader!.initialized();
    if (isLoaded) {
      setState(() {});
    }
  }

  void _addition(List<int> input) {
    final _sum = loader!.callfunc('add', [1, 3]) as double;
    setState(() {});
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion = "111";
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              final wallet = create();
              print(wallet.toString());
            },
            child: Text("Press"),
          ),
        ),
      ),
    );
  }
}
