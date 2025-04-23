# Wallet Core Web

A Dart web wrapper for Trust Wallet Core, providing a comprehensive interface for cryptocurrency wallet functionality. This library is generated using [js_facade_gen](https://github.com/dart-lang/js_facade_gen) to create Dart bindings for the Trust Wallet Core JavaScript API.

## Features

- Hierarchical Deterministic (HD) Wallet support
- Multi-cryptocurrency support including:
  - Bitcoin (BTC)
  - Ethereum (ETH)
  - Binance Smart Chain (BSC)
  - Polygon
  - Avalanche
  - Cardano
  - Cosmos
  - And many more...
- Transaction signing
- Address generation and validation
- Hex encoding/decoding utilities

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  wallet_core_web:
    git:
      url: https://github.com/yourusername/Wallet-Core-Web.git
```

## Usage

### Initialize HD Wallet

```dart
import 'package:wallet_core_web/wallet_core.dart';

// Create a new wallet
final wallet = HDWallet.create(256, 'your_passphrase');

// Get the mnemonic
String mnemonic = wallet.mnemonic();

// Create wallet from existing mnemonic
final importedWallet = HDWallet.createWithMnemonic(mnemonic, 'your_passphrase');
```

### Sign Transactions

```dart
import 'package:wallet_core_web/wallet_core.dart';

// Sign a transaction
Uint8List signedTransaction = AnySigner.sign(transactionData, CoinType.ethereum);
```

### Hex Encoding/Decoding

```dart
import 'package:wallet_core_web/wallet_core.dart';

// Encode bytes to hex
String hexString = HexCoding.encode(byteData);

// Decode hex to bytes
Uint8List bytes = HexCoding.decode(hexString);
```

## Project Structure

- `/lib` - Contains the main Dart library files
  - `wallet_core.dart` - Main wallet core functionality
  - `loader.dart` - Library loader
  - `proto.dart` - Protocol buffer definitions
  - `main.dart` - Entry point
- `/web` - Web-specific files and assets

## License

This project is licensed under the terms found in the LICENSE file.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

