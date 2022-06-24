@JS("window.dartInteropt.wallet_core_web.tw")
library wallet_core_web;

import 'dart:typed_data';

import 'package:js/js.dart';

@anonymous
@JS()
abstract class ITransaction {
  /// Transaction transfer
  external ITransfer /*ITransfer|Null*/ get transfer;
  external set transfer(ITransfer /*ITransfer|Null*/ v);

  /// Transaction erc20Transfer
  external IERC20Transfer /*IERC20Transfer|Null*/ get erc20Transfer;
  external set erc20Transfer(IERC20Transfer /*IERC20Transfer|Null*/ v);

  /// Transaction erc20Approve
  external IERC20Approve /*IERC20Approve|Null*/ get erc20Approve;
  external set erc20Approve(IERC20Approve /*IERC20Approve|Null*/ v);

  /// Transaction erc721Transfer
  external IERC721Transfer /*IERC721Transfer|Null*/ get erc721Transfer;
  external set erc721Transfer(IERC721Transfer /*IERC721Transfer|Null*/ v);

  /// Transaction erc1155Transfer
  external IERC1155Transfer /*IERC1155Transfer|Null*/ get erc1155Transfer;
  external set erc1155Transfer(IERC1155Transfer /*IERC1155Transfer|Null*/ v);

  /// Transaction contractGeneric
  external IContractGeneric /*IContractGeneric|Null*/ get contractGeneric;
  external set contractGeneric(IContractGeneric /*IContractGeneric|Null*/ v);
  external factory ITransaction(
      {ITransfer /*ITransfer|Null*/ transfer,
      IERC20Transfer /*IERC20Transfer|Null*/ erc20Transfer,
      IERC20Approve /*IERC20Approve|Null*/ erc20Approve,
      IERC721Transfer /*IERC721Transfer|Null*/ erc721Transfer,
      IERC1155Transfer /*IERC1155Transfer|Null*/ erc1155Transfer,
      IContractGeneric /*IContractGeneric|Null*/ contractGeneric});
}

/// Represents a Transaction.
@JS("Ethereum.Proto.Transaction")
class Transaction implements ITransaction {
  /// Constructs a new Transaction.
  /// Transaction transfer.
  external ITransfer /*ITransfer|Null*/ get transfer;
  external set transfer(ITransfer /*ITransfer|Null*/ v);

  /// Transaction erc20Transfer.
  external IERC20Transfer /*IERC20Transfer|Null*/ get erc20Transfer;
  external set erc20Transfer(IERC20Transfer /*IERC20Transfer|Null*/ v);

  /// Transaction erc20Approve.
  external IERC20Approve /*IERC20Approve|Null*/ get erc20Approve;
  external set erc20Approve(IERC20Approve /*IERC20Approve|Null*/ v);

  /// Transaction erc721Transfer.
  external IERC721Transfer /*IERC721Transfer|Null*/ get erc721Transfer;
  external set erc721Transfer(IERC721Transfer /*IERC721Transfer|Null*/ v);

  /// Transaction erc1155Transfer.
  external IERC1155Transfer /*IERC1155Transfer|Null*/ get erc1155Transfer;
  external set erc1155Transfer(IERC1155Transfer /*IERC1155Transfer|Null*/ v);

  /// Transaction contractGeneric.
  external IContractGeneric /*IContractGeneric|Null*/ get contractGeneric;
  external set contractGeneric(IContractGeneric /*IContractGeneric|Null*/ v);

  /// Transaction transactionOneof.
  external String /*'transfer'|'erc20Transfer'|'erc20Approve'|'erc721Transfer'|'erc1155Transfer'|'contractGeneric'*/ get transactionOneof;
  external set transactionOneof(
      String /*'transfer'|'erc20Transfer'|'erc20Approve'|'erc721Transfer'|'erc1155Transfer'|'contractGeneric'*/ v);

  /// Creates a new Transaction instance using the specified properties.
  external static Transaction create([ITransaction properties]);

  /// Encodes the specified Transaction message. Does not implicitly [Ethereum.Proto.Transaction.verify|verify] messages.
  external static dynamic encode(ITransaction message, [dynamic writer]);

  /// Decodes a Transaction message from the specified reader or buffer.
  external static Transaction decode(
      dynamic /*$protobuf.Reader|Uint8List*/ reader,
      [num length]);

  /// Verifies a Transaction message.
  external static String /*String|Null*/ verify(
      dynamic /*JSMap of <String,dynamic>*/ message);

  /// Creates a Transaction message from a plain object. Also converts values to their respective internal types.
  external static Transaction fromObject(
      dynamic /*JSMap of <String,dynamic>*/ object);

  /// Creates a plain object from a Transaction message. Also converts values to other types if specified.
  external static dynamic /*JSMap of <String,dynamic>*/ toObject(
      Transaction message,
      [dynamic options]);

  /// Converts this Transaction to JSON.
  external dynamic /*JSMap of <String,dynamic>*/ toJSON();
}

// Module Transaction
/// Properties of a Transfer.
@anonymous
@JS()
abstract class ITransfer {
  /// Transfer amount
  external Uint8List /*Uint8List|Null*/ get amount;
  external set amount(Uint8List /*Uint8List|Null*/ v);

  /// Transfer data
  external Uint8List /*Uint8List|Null*/ get data;
  external set data(Uint8List /*Uint8List|Null*/ v);
  external factory ITransfer(
      {Uint8List /*Uint8List|Null*/ amount, Uint8List /*Uint8List|Null*/ data});
}

/// Represents a Transfer.
@JS("Ethereum.Proto.Transaction.Transfer")
class Transfer implements ITransfer {
  /// Constructs a new Transfer.
  /// Transfer amount.
  external Uint8List get amount;
  external set amount(Uint8List v);

  /// Transfer data.
  external Uint8List get data;
  external set data(Uint8List v);

  /// Creates a new Transfer instance using the specified properties.
  external static Transfer create([ITransfer properties]);

  /// Encodes the specified Transfer message. Does not implicitly [Ethereum.Proto.Transaction.Transfer.verify|verify] messages.
  external static dynamic encode(ITransfer message, [dynamic writer]);

  /// Decodes a Transfer message from the specified reader or buffer.
  external static Transfer decode(dynamic /*$protobuf.Reader|Uint8List*/ reader,
      [num length]);

  /// Verifies a Transfer message.
  external static String /*String|Null*/ verify(
      dynamic /*JSMap of <String,dynamic>*/ message);

  /// Creates a Transfer message from a plain object. Also converts values to their respective internal types.
  external static Transfer fromObject(
      dynamic /*JSMap of <String,dynamic>*/ object);

  /// Creates a plain object from a Transfer message. Also converts values to other types if specified.
  external static dynamic /*JSMap of <String,dynamic>*/ toObject(
      Transfer message,
      [dynamic options]);

  /// Converts this Transfer to JSON.
  external dynamic /*JSMap of <String,dynamic>*/ toJSON();
}

/// Properties of a ERC20Transfer.
@anonymous
@JS()
abstract class IERC20Transfer {
  /// ERC20Transfer to
  external String /*String|Null*/ get to;
  external set to(String /*String|Null*/ v);

  /// ERC20Transfer amount
  external Uint8List /*Uint8List|Null*/ get amount;
  external set amount(Uint8List /*Uint8List|Null*/ v);
  external factory IERC20Transfer(
      {String /*String|Null*/ to, Uint8List /*Uint8List|Null*/ amount});
}

/// Represents a ERC20Transfer.
@JS("Ethereum.Proto.Transaction.ERC20Transfer")
class ERC20Transfer implements IERC20Transfer {
  /// Constructs a new ERC20Transfer.
  /// ERC20Transfer to.
  external String get to;
  external set to(String v);

  /// ERC20Transfer amount.
  external Uint8List get amount;
  external set amount(Uint8List v);

  /// Creates a new ERC20Transfer instance using the specified properties.
  external static ERC20Transfer create([IERC20Transfer properties]);

  /// Encodes the specified ERC20Transfer message. Does not implicitly [Ethereum.Proto.Transaction.ERC20Transfer.verify|verify] messages.
  external static dynamic encode(IERC20Transfer message, [dynamic writer]);

  /// Decodes a ERC20Transfer message from the specified reader or buffer.
  external static ERC20Transfer decode(
      dynamic /*$protobuf.Reader|Uint8List*/ reader,
      [num length]);

  /// Verifies a ERC20Transfer message.
  external static String /*String|Null*/ verify(
      dynamic /*JSMap of <String,dynamic>*/ message);

  /// Creates a ERC20Transfer message from a plain object. Also converts values to their respective internal types.
  external static ERC20Transfer fromObject(
      dynamic /*JSMap of <String,dynamic>*/ object);

  /// Creates a plain object from a ERC20Transfer message. Also converts values to other types if specified.
  external static dynamic /*JSMap of <String,dynamic>*/ toObject(
      ERC20Transfer message,
      [dynamic options]);

  /// Converts this ERC20Transfer to JSON.
  external dynamic /*JSMap of <String,dynamic>*/ toJSON();
}

/// Properties of a ERC20Approve.
@anonymous
@JS()
abstract class IERC20Approve {
  /// ERC20Approve spender
  external String /*String|Null*/ get spender;
  external set spender(String /*String|Null*/ v);

  /// ERC20Approve amount
  external Uint8List /*Uint8List|Null*/ get amount;
  external set amount(Uint8List /*Uint8List|Null*/ v);
  external factory IERC20Approve(
      {String /*String|Null*/ spender, Uint8List /*Uint8List|Null*/ amount});
}

/// Represents a ERC20Approve.
@JS("Ethereum.Proto.Transaction.ERC20Approve")
class ERC20Approve implements IERC20Approve {
  /// Constructs a new ERC20Approve.
  /// ERC20Approve spender.
  external String get spender;
  external set spender(String v);

  /// ERC20Approve amount.
  external Uint8List get amount;
  external set amount(Uint8List v);

  /// Creates a new ERC20Approve instance using the specified properties.
  external static ERC20Approve create([IERC20Approve properties]);

  /// Encodes the specified ERC20Approve message. Does not implicitly [Ethereum.Proto.Transaction.ERC20Approve.verify|verify] messages.
  external static dynamic encode(IERC20Approve message, [dynamic writer]);

  /// Decodes a ERC20Approve message from the specified reader or buffer.
  external static ERC20Approve decode(
      dynamic /*$protobuf.Reader|Uint8List*/ reader,
      [num length]);

  /// Verifies a ERC20Approve message.
  external static String /*String|Null*/ verify(
      dynamic /*JSMap of <String,dynamic>*/ message);

  /// Creates a ERC20Approve message from a plain object. Also converts values to their respective internal types.
  external static ERC20Approve fromObject(
      dynamic /*JSMap of <String,dynamic>*/ object);

  /// Creates a plain object from a ERC20Approve message. Also converts values to other types if specified.
  external static dynamic /*JSMap of <String,dynamic>*/ toObject(
      ERC20Approve message,
      [dynamic options]);

  /// Converts this ERC20Approve to JSON.
  external dynamic /*JSMap of <String,dynamic>*/ toJSON();
}

/// Properties of a ERC721Transfer.
@anonymous
@JS()
abstract class IERC721Transfer {
  /// ERC721Transfer from
  external String /*String|Null*/ get from;
  external set from(String /*String|Null*/ v);

  /// ERC721Transfer to
  external String /*String|Null*/ get to;
  external set to(String /*String|Null*/ v);

  /// ERC721Transfer tokenId
  external Uint8List /*Uint8List|Null*/ get tokenId;
  external set tokenId(Uint8List /*Uint8List|Null*/ v);
  external factory IERC721Transfer(
      {String /*String|Null*/ from,
      String /*String|Null*/ to,
      Uint8List /*Uint8List|Null*/ tokenId});
}

/// Represents a ERC721Transfer.
@JS("Ethereum.Proto.Transaction.ERC721Transfer")
class ERC721Transfer implements IERC721Transfer {
  /// Constructs a new ERC721Transfer.
  /// ERC721Transfer from.
  external String get from;
  external set from(String v);

  /// ERC721Transfer to.
  external String get to;
  external set to(String v);

  /// ERC721Transfer tokenId.
  external Uint8List get tokenId;
  external set tokenId(Uint8List v);

  /// Creates a new ERC721Transfer instance using the specified properties.
  external static ERC721Transfer create([IERC721Transfer properties]);

  /// Encodes the specified ERC721Transfer message. Does not implicitly [Ethereum.Proto.Transaction.ERC721Transfer.verify|verify] messages.
  external static dynamic encode(IERC721Transfer message, [dynamic writer]);

  /// Decodes a ERC721Transfer message from the specified reader or buffer.
  external static ERC721Transfer decode(
      dynamic /*$protobuf.Reader|Uint8List*/ reader,
      [num length]);

  /// Verifies a ERC721Transfer message.
  external static String /*String|Null*/ verify(
      dynamic /*JSMap of <String,dynamic>*/ message);

  /// Creates a ERC721Transfer message from a plain object. Also converts values to their respective internal types.
  external static ERC721Transfer fromObject(
      dynamic /*JSMap of <String,dynamic>*/ object);

  /// Creates a plain object from a ERC721Transfer message. Also converts values to other types if specified.
  external static dynamic /*JSMap of <String,dynamic>*/ toObject(
      ERC721Transfer message,
      [dynamic options]);

  /// Converts this ERC721Transfer to JSON.
  external dynamic /*JSMap of <String,dynamic>*/ toJSON();
}

/// Properties of a ERC1155Transfer.
@anonymous
@JS()
abstract class IERC1155Transfer {
  /// ERC1155Transfer from
  external String /*String|Null*/ get from;
  external set from(String /*String|Null*/ v);

  /// ERC1155Transfer to
  external String /*String|Null*/ get to;
  external set to(String /*String|Null*/ v);

  /// ERC1155Transfer tokenId
  external Uint8List /*Uint8List|Null*/ get tokenId;
  external set tokenId(Uint8List /*Uint8List|Null*/ v);

  /// ERC1155Transfer value
  external Uint8List /*Uint8List|Null*/ get value;
  external set value(Uint8List /*Uint8List|Null*/ v);

  /// ERC1155Transfer data
  external Uint8List /*Uint8List|Null*/ get data;
  external set data(Uint8List /*Uint8List|Null*/ v);
  external factory IERC1155Transfer(
      {String /*String|Null*/ from,
      String /*String|Null*/ to,
      Uint8List /*Uint8List|Null*/ tokenId,
      Uint8List /*Uint8List|Null*/ value,
      Uint8List /*Uint8List|Null*/ data});
}

/// Represents a ERC1155Transfer.
@JS("Ethereum.Proto.Transaction.ERC1155Transfer")
class ERC1155Transfer implements IERC1155Transfer {
  /// Constructs a new ERC1155Transfer.
  /// ERC1155Transfer from.
  external String get from;
  external set from(String v);

  /// ERC1155Transfer to.
  external String get to;
  external set to(String v);

  /// ERC1155Transfer tokenId.
  external Uint8List get tokenId;
  external set tokenId(Uint8List v);

  /// ERC1155Transfer value.
  external Uint8List get value;
  external set value(Uint8List v);

  /// ERC1155Transfer data.
  external Uint8List get data;
  external set data(Uint8List v);

  /// Creates a new ERC1155Transfer instance using the specified properties.
  external static ERC1155Transfer create([IERC1155Transfer properties]);

  /// Encodes the specified ERC1155Transfer message. Does not implicitly [Ethereum.Proto.Transaction.ERC1155Transfer.verify|verify] messages.
  external static dynamic encode(IERC1155Transfer message, [dynamic writer]);

  /// Decodes a ERC1155Transfer message from the specified reader or buffer.
  external static ERC1155Transfer decode(
      dynamic /*$protobuf.Reader|Uint8List*/ reader,
      [num length]);

  /// Verifies a ERC1155Transfer message.
  external static String /*String|Null*/ verify(
      dynamic /*JSMap of <String,dynamic>*/ message);

  /// Creates a ERC1155Transfer message from a plain object. Also converts values to their respective internal types.
  external static ERC1155Transfer fromObject(
      dynamic /*JSMap of <String,dynamic>*/ object);

  /// Creates a plain object from a ERC1155Transfer message. Also converts values to other types if specified.
  external static dynamic /*JSMap of <String,dynamic>*/ toObject(
      ERC1155Transfer message,
      [dynamic options]);

  /// Converts this ERC1155Transfer to JSON.
  external dynamic /*JSMap of <String,dynamic>*/ toJSON();
}

/// Properties of a ContractGeneric.
@anonymous
@JS()
abstract class IContractGeneric {
  /// ContractGeneric amount
  external Uint8List /*Uint8List|Null*/ get amount;
  external set amount(Uint8List /*Uint8List|Null*/ v);

  /// ContractGeneric data
  external Uint8List /*Uint8List|Null*/ get data;
  external set data(Uint8List /*Uint8List|Null*/ v);
  external factory IContractGeneric(
      {Uint8List /*Uint8List|Null*/ amount, Uint8List /*Uint8List|Null*/ data});
}

/// Represents a ContractGeneric.
@JS("Ethereum.Proto.Transaction.ContractGeneric")
class ContractGeneric implements IContractGeneric {
  /// Constructs a new ContractGeneric.
  /// ContractGeneric amount.
  external Uint8List get amount;
  external set amount(Uint8List v);

  /// ContractGeneric data.
  external Uint8List get data;
  external set data(Uint8List v);

  /// Creates a new ContractGeneric instance using the specified properties.
  external static ContractGeneric create([IContractGeneric properties]);

  /// Encodes the specified ContractGeneric message. Does not implicitly [Ethereum.Proto.Transaction.ContractGeneric.verify|verify] messages.
  external static dynamic encode(IContractGeneric message, [dynamic writer]);

  /// Decodes a ContractGeneric message from the specified reader or buffer.
  external static ContractGeneric decode(
      dynamic /*$protobuf.Reader|Uint8List*/ reader,
      [num length]);

  /// Verifies a ContractGeneric message.
  external static String /*String|Null*/ verify(
      dynamic /*JSMap of <String,dynamic>*/ message);

  /// Creates a ContractGeneric message from a plain object. Also converts values to their respective internal types.
  external static ContractGeneric fromObject(
      dynamic /*JSMap of <String,dynamic>*/ object);

  /// Creates a plain object from a ContractGeneric message. Also converts values to other types if specified.
  external static dynamic /*JSMap of <String,dynamic>*/ toObject(
      ContractGeneric message,
      [dynamic options]);

  /// Converts this ContractGeneric to JSON.
  external dynamic /*JSMap of <String,dynamic>*/ toJSON();
}

// End module Transaction
/// TransactionMode enum.
/// export enum TransactionMode {
/// Legacy = 0,
/// Enveloped = 1
/// }
/// Properties of a SigningInput.
@anonymous
@JS()
abstract class ISigningInput {
  /// SigningInput chainId
  external Uint8List /*Uint8List|Null*/ get chainId;
  external set chainId(Uint8List /*Uint8List|Null*/ v);

  /// SigningInput nonce
  external Uint8List /*Uint8List|Null*/ get nonce;
  external set nonce(Uint8List /*Uint8List|Null*/ v);

  /// /** SigningInput txMode
  /// txMode?: (Ethereum.Proto.TransactionMode | null);
  /// SigningInput gasPrice
  external Uint8List /*Uint8List|Null*/ get gasPrice;
  external set gasPrice(Uint8List /*Uint8List|Null*/ v);

  /// SigningInput gasLimit
  external Uint8List /*Uint8List|Null*/ get gasLimit;
  external set gasLimit(Uint8List /*Uint8List|Null*/ v);

  /// SigningInput maxInclusionFeePerGas
  external Uint8List /*Uint8List|Null*/ get maxInclusionFeePerGas;
  external set maxInclusionFeePerGas(Uint8List /*Uint8List|Null*/ v);

  /// SigningInput maxFeePerGas
  external Uint8List /*Uint8List|Null*/ get maxFeePerGas;
  external set maxFeePerGas(Uint8List /*Uint8List|Null*/ v);

  /// SigningInput toAddress
  external String /*String|Null*/ get toAddress;
  external set toAddress(String /*String|Null*/ v);

  /// SigningInput privateKey
  external Uint8List /*Uint8List|Null*/ get privateKey;
  external set privateKey(Uint8List /*Uint8List|Null*/ v);

  /// SigningInput transaction
  external ITransaction /*ITransaction|Null*/ get transaction;
  external set transaction(ITransaction /*ITransaction|Null*/ v);
  external factory ISigningInput(
      {Uint8List /*Uint8List|Null*/ chainId,
      Uint8List /*Uint8List|Null*/ nonce,
      Uint8List /*Uint8List|Null*/ gasPrice,
      Uint8List /*Uint8List|Null*/ gasLimit,
      Uint8List /*Uint8List|Null*/ maxInclusionFeePerGas,
      Uint8List /*Uint8List|Null*/ maxFeePerGas,
      String /*String|Null*/ toAddress,
      dynamic /*Uint8List|Null*/ privateKey,
      ITransaction /*ITransaction|Null*/ transaction});
}

/// Represents a SigningInput.
@JS("Ethereum.Proto.SigningInput")
class SigningInput implements ISigningInput {
  /// Constructs a new SigningInput.
  /// SigningInput chainId.
  external Uint8List get chainId;
  external set chainId(Uint8List v);

  /// SigningInput nonce.
  external Uint8List get nonce;
  external set nonce(Uint8List v);

  /// SigningInput txMode.
  external dynamic txMode;

  /// public txMode: Ethereum.Proto.TransactionMode;
  /// SigningInput gasPrice.
  external Uint8List get gasPrice;
  external set gasPrice(Uint8List v);

  /// SigningInput gasLimit.
  external Uint8List get gasLimit;
  external set gasLimit(Uint8List v);

  /// SigningInput maxInclusionFeePerGas.
  external Uint8List get maxInclusionFeePerGas;
  external set maxInclusionFeePerGas(Uint8List v);

  /// SigningInput maxFeePerGas.
  external Uint8List get maxFeePerGas;
  external set maxFeePerGas(Uint8List v);

  /// SigningInput toAddress.
  external String get toAddress;
  external set toAddress(String v);

  /// SigningInput privateKey.
  external Uint8List get privateKey;
  external set privateKey(Uint8List v);

  /// SigningInput transaction.
  external ITransaction /*ITransaction|Null*/ get transaction;
  external set transaction(ITransaction /*ITransaction|Null*/ v);

  /// Creates a new SigningInput instance using the specified properties.
  external static SigningInput create([ISigningInput properties]);

  /// Encodes the specified SigningInput message. Does not implicitly [Ethereum.Proto.SigningInput.verify|verify] messages.
  external static Writer encode(ISigningInput message, [Writer writer]);

  /// Decodes a SigningInput message from the specified reader or buffer.
  external static SigningInput decode(
      dynamic /*$protobuf.Reader|Uint8List*/ reader,
      [num length]);

  /// Verifies a SigningInput message.
  external static String /*String|Null*/ verify(
      dynamic /*JSMap of <String,dynamic>*/ message);

  /// Creates a SigningInput message from a plain object. Also converts values to their respective internal types.
  external static dynamic fromObject(
      dynamic /*JSMap of <String,dynamic>*/ object);

  /// Creates a plain object from a SigningInput message. Also converts values to other types if specified.
  external static Map<String, dynamic> /*JSMap of <String,dynamic>*/ toObject(
      SigningInput message,
      [IConversionOptions options]);

  /// Converts this SigningInput to JSON.
  external Map<String, dynamic> /*JSMap of <String,dynamic>*/ toJSON();
}

/// Properties of a SigningOutput.
@anonymous
@JS()
abstract class ISigningOutput {
  /// SigningOutput encoded
  external Uint8List /*Uint8List|Null*/ get encoded;
  external set encoded(Uint8List /*Uint8List|Null*/ v);

  /// SigningOutput v
  external Uint8List /*Uint8List|Null*/ get v;
  external set v(Uint8List /*Uint8List|Null*/ v);

  /// SigningOutput r
  external Uint8List /*Uint8List|Null*/ get r;
  external set r(Uint8List /*Uint8List|Null*/ v);

  /// SigningOutput s
  external Uint8List /*Uint8List|Null*/ get s;
  external set s(Uint8List /*Uint8List|Null*/ v);

  /// SigningOutput data
  external Uint8List /*Uint8List|Null*/ get data;
  external set data(Uint8List /*Uint8List|Null*/ v);

  /// error code, 0 is ok, other codes will be treated as errors
  /// error?: (Common.Proto.SigningError | null);
  /// error code description
  external String /*String|Null*/ get errorMessage;
  external set errorMessage(String /*String|Null*/ v);
  external factory ISigningOutput(
      {Uint8List /*Uint8List|Null*/ encoded,
      Uint8List /*Uint8List|Null*/ v,
      Uint8List /*Uint8List|Null*/ r,
      Uint8List /*Uint8List|Null*/ s,
      Uint8List /*Uint8List|Null*/ data,
      String /*String|Null*/ errorMessage});
}

/// Represents a SigningOutput.
@JS("Ethereum.Proto.SigningOutput")
class SigningOutput implements ISigningOutput {
  /// Constructs a new SigningOutput.
  /// SigningOutput encoded.
  external Uint8List get encoded;
  external set encoded(Uint8List v);

  /// SigningOutput v.
  external Uint8List get v;
  external set v(Uint8List v);

  /// SigningOutput r.
  external Uint8List get r;
  external set r(Uint8List v);

  /// SigningOutput s.
  external Uint8List get s;
  external set s(Uint8List v);

  /// SigningOutput data.
  external Uint8List get data;
  external set data(Uint8List v);

  /// error code, 0 is ok, other codes will be treated as errors
  /// public error: Common.Proto.SigningError;
  /// error code description
  external String get errorMessage;
  external set errorMessage(String v);

  /// Creates a new SigningOutput instance using the specified properties.
  external static SigningOutput create([ISigningOutput properties]);

  /// Encodes the specified SigningOutput message. Does not implicitly [Ethereum.Proto.SigningOutput.verify|verify] messages.
  external static Writer encode(ISigningOutput message, [Writer writer]);

  /// Decodes a SigningOutput message from the specified reader or buffer.
  external static SigningOutput decode(
      dynamic /*$protobuf.Reader|Uint8List*/ reader,
      [num length]);

  /// Verifies a SigningOutput message.
  external static String /*String|Null*/ verify(
      dynamic /*JSMap of <String,dynamic>*/ message);

  /// Creates a SigningOutput message from a plain object. Also converts values to their respective internal types.
  external static SigningOutput fromObject(
      dynamic /*JSMap of <String,dynamic>*/ object);

  /// Creates a plain object from a SigningOutput message. Also converts values to other types if specified.
  external static dynamic /*JSMap of <String,dynamic>*/ toObject(
      SigningOutput message,
      [dynamic options]);

  /// Converts this SigningOutput to JSON.
  external dynamic /*JSMap of <String,dynamic>*/ toJSON();
}

@JS()
class Writer {
  /// Current length.
  external num get len;
  external set len(num v);

  /// Operations head.
  external Object get head;
  external set head(Object v);

  /// Operations tail
  external Object get tail;
  external set tail(Object v);

  /// Linked forked states.
  external Object /*Object|Null*/ get states;
  external set states(Object /*Object|Null*/ v);

  /// Creates a new writer.
  external static Writer create();

  /// Allocates a buffer of the specified size.
  external static Uint8List alloc(num size);

  /// Writes an unsigned 32 bit value as a varint.
  external Writer uint32(num value);

  /// Writes a signed 32 bit value as a varint.
  external Writer int32(num value);

  /// Writes a 32 bit value as a varint, zig-zag encoded.
  external Writer sint32(num value);

  /// Writes an unsigned 64 bit value as a varint.
  external Writer uint64(dynamic /*Long|num|String*/ value);

  /// Writes a signed 64 bit value as a varint.
  external Writer int64(dynamic /*Long|num|String*/ value);

  /// Writes a signed 64 bit value as a varint, zig-zag encoded.
  external Writer sint64(dynamic /*Long|num|String*/ value);

  /// Writes a boolish value as a varint.
  @JS("bool")
  external Writer bool1(bool value);

  /// Writes an unsigned 32 bit value as fixed 32 bits.
  external Writer fixed32(num value);

  /// Writes a signed 32 bit value as fixed 32 bits.
  external Writer sfixed32(num value);

  /// Writes an unsigned 64 bit value as fixed 64 bits.
  external Writer fixed64(dynamic /*Long|num|String*/ value);

  /// Writes a signed 64 bit value as fixed 64 bits.
  external Writer sfixed64(dynamic /*Long|num|String*/ value);

  /// Writes a float (32 bit).
  external Writer float(num value);

  /// Writes a double (64 bit float).
  external Writer double(num value);

  /// Writes a sequence of bytes.
  external Writer bytes(dynamic /*Uint8Array|String*/ value);

  /// Writes a string.
  external Writer string(String value);

  /// Forks this writer's state by pushing it to a stack.
  /// Calling [Writer#reset|reset] or [Writer#ldelim|ldelim] resets the writer to the previous state.
  external Writer fork();

  /// Resets this instance to the last state.
  external Writer reset();

  /// Resets to the last state and appends the fork state's current write length as a varint followed by its operations.
  external Writer ldelim();

  /// Finishes the write operation.
  external Uint8List finish();
}

/// Conversion options as used by [Type#toObject] and [Message.toObject].
@anonymous
@JS()
abstract class IConversionOptions {
  /// Long conversion type.
  /// Valid values are `String` and `Number` (the global types).
  /// Defaults to copy the present value, which is a possibly unsafe number without and a [Long] with a long library.
  external Function get longs;
  external set longs(Function v);

  /// Enum value conversion type.
  /// Only valid value is `String` (the global type).
  /// Defaults to copy the present value, which is the numeric id.
  external Function get enums;
  external set enums(Function v);

  /// Bytes value conversion type.
  /// Valid values are `Array` and (a base64 encoded) `String` (the global types).
  /// Defaults to copy the present value, which usually is a Buffer under node and an Uint8Array in the browser.
  external Function get bytes;
  external set bytes(Function v);

  /// Also sets default values on the resulting object
  external bool get defaults;
  external set defaults(bool v);

  /// Sets empty arrays for missing repeated fields even if `defaults=false`
  external bool get arrays;
  external set arrays(bool v);

  /// Sets empty objects for missing map fields even if `defaults=false`
  external bool get objects;
  external set objects(bool v);

  /// Includes virtual oneof properties set to the present field's name, if any
  external bool get oneofs;
  external set oneofs(bool v);

  /// Performs additional JSON compatibility conversions, i.e. NaN and Infinity to strings
  external bool get json;
  external set json(bool v);
  external factory IConversionOptions(
      {Function longs,
      Function enums,
      Function bytes,
      bool defaults,
      bool arrays,
      bool objects,
      bool oneofs,
      bool json});
}

@JS("util.toJSONOptions")
external IConversionOptions get toJSONOptions;
@JS("util.toJSONOptions")
external set toJSONOptions(IConversionOptions v);

// End module Proto

// End module Ethereum

// End module TW
