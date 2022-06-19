@JS('proto.TW.Ethereum.Proto')
library wallet_core;

import 'dart:typed_data';

import 'package:js/js.dart';

/// Properties of a Transaction.
@JS('ITransaction')
abstract class EthereumITransaction {
  ///** Transaction transfer */
  EthereumITransfer? transfer(EthereumITransfer? value);
}

/// Represents a Transaction.
@JS('Transaction')
class EthereumTransaction implements EthereumITransaction {
  /// Constructs a new Transaction.
  /// @param [properties] Properties to set
  external EthereumTransaction([EthereumITransaction? properties]);

  /// Transaction transfer.
  @override
  external EthereumITransfer? transfer([EthereumITransfer? value]);

  /// Converts this Transaction to JSON.
  /// @returns JSON object
  external Map<String, dynamic> toJSON();
}

/// Properties of a Transfer
@JS('Transaction.ITransfer')
abstract class EthereumITransfer {
  /// Transfer amount
  Uint8List? amount([Uint8List? value]);

  /// Transfer data
  Uint8List? data([Uint8List? value]);
}

/// Represents a Transfer.
@JS('Transaction.Transfer')
class EthereumTransfer implements EthereumITransfer {
  /// Constructs a new Transfer.
  /// @param [properties] Properties to set
  external EthereumTransfer([EthereumITransfer? properties]);

  /// Transfer amount
  @override
  external Uint8List? amount([Uint8List? value]);

  /// Transfer data
  @override
  external Uint8List? data([Uint8List? value]);
}
