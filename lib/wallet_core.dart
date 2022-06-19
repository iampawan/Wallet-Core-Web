@JS('Module')
library wallet_core;

import 'dart:typed_data';

import "package:js/js.dart";

/// Copyright © 2017-2022 Trust Wallet.
/// This file is part of Trust. The full Trust copyright notice, including
/// terms governing use, modification, and redistribution, is contained in the
/// file LICENSE at the root of the source code distribution tree.
/// This is a GENERATED FILE, changes made here WILL BE LOST.
@JS()
class AnySigner {
  external static Uint8List sign(dynamic /*Uint8List|Buffer*/ data, CoinType coin);

  external static Uint8List plan(dynamic /*Uint8List|Buffer*/ data, CoinType coin);

  external static bool supportsJSON(CoinType coin);
}

// Module HexCoding
@JS("HexCoding.decode")
external Uint8List decode(String hex);

@JS("HexCoding.encode")
external String encode(dynamic /*Uint8List|Buffer*/ buffer);

// End module HexCoding
@JS()
class HDWallet {
  external static PublicKey getPublicKeyFromExtended(
      String extended, CoinType coin, String derivationPath);

  external HDWallet(num strength, String passphrase);

  external static HDWallet createWithMnemonic(String mnemonic, String passphrase);

  external static HDWallet createWithMnemonicCheck(String mnemonic, String passphrase, bool check);

  external static HDWallet createWithEntropy(
      dynamic /*Uint8List|Buffer*/ entropy, String passphrase);

  external Uint8List seed();

  external String mnemonic();

  external Uint8List entropy();

  external PrivateKey getMasterKey(Curve curve);

  external PrivateKey getKeyForCoin(CoinType coin);

  external String getAddressForCoin(CoinType coin);

  external PrivateKey getKey(CoinType coin, String derivationPath);

  external PrivateKey getDerivedKey(CoinType coin, num account, num change, num address);

  external String getExtendedPrivateKey(Purpose purpose, CoinType coin, HDVersion version);

  external String getExtendedPublicKey(Purpose purpose, CoinType coin, HDVersion version);

  external String getExtendedPrivateKeyAccount(
      Purpose purpose, CoinType coin, HDVersion version, num account);

  external String getExtendedPublicKeyAccount(
      Purpose purpose, CoinType coin, HDVersion version, num account);

  external void delete();
}

@JS()
class SolanaAddress {
  external static SolanaAddress createWithString(String string);

  external String description();

  external String defaultTokenAddress(String tokenMintAddress);

  external void delete();
}

@JS()
class PrivateKey {
  external static bool isValid(dynamic /*Uint8List|Buffer*/ data, Curve curve);

  external static PrivateKey create();

  external static PrivateKey createWithData(dynamic /*Uint8List|Buffer*/ data);

  external static PrivateKey createCopy(PrivateKey key);

  external Uint8List data();

  external PublicKey getPublicKeySecp256k1(bool compressed);

  external PublicKey getPublicKeyNist256p1();

  external PublicKey getPublicKeyEd25519();

  external PublicKey getPublicKeyEd25519Blake2b();

  external PublicKey getPublicKeyEd25519Extended();

  external PublicKey getPublicKeyCurve25519();

  external Uint8List getSharedKey(PublicKey publicKey, Curve curve);

  external Uint8List sign(dynamic /*Uint8List|Buffer*/ digest, Curve curve);

  external Uint8List signAsDER(dynamic /*Uint8List|Buffer*/ digest, Curve curve);

  external Uint8List signSchnorr(dynamic /*Uint8List|Buffer*/ message, Curve curve);

  external void delete();
}

@JS()
class BitcoinScript {
  external static bool equal(BitcoinScript lhs, BitcoinScript rhs);

  external static BitcoinScript buildPayToPublicKey(dynamic /*Uint8List|Buffer*/ pubkey);

  external static BitcoinScript buildPayToPublicKeyHash(dynamic /*Uint8List|Buffer*/ hash);

  external static BitcoinScript buildPayToScriptHash(dynamic /*Uint8List|Buffer*/ scriptHash);

  external static BitcoinScript buildPayToWitnessPubkeyHash(dynamic /*Uint8List|Buffer*/ hash);

  external static BitcoinScript buildPayToWitnessScriptHash(
      dynamic /*Uint8List|Buffer*/ scriptHash);

  external static BitcoinScript lockScriptForAddress(String address, CoinType coin);

  external static num hashTypeForCoin(CoinType coinType);

  external static BitcoinScript create();

  external static BitcoinScript createWithData(dynamic /*Uint8List|Buffer*/ data);

  external static BitcoinScript createCopy(BitcoinScript script);

  external num size();

  external Uint8List data();

  external Uint8List scriptHash();

  external bool isPayToScriptHash();

  external bool isPayToWitnessScriptHash();

  external bool isPayToWitnessPublicKeyHash();

  external bool isWitnessProgram();

  external Uint8List matchPayToPubkey();

  external Uint8List matchPayToPubkeyHash();

  external Uint8List matchPayToScriptHash();

  external Uint8List matchPayToWitnessPublicKeyHash();

  external Uint8List matchPayToWitnessScriptHash();

  external Uint8List encode();

  external void delete();
}

@JS()
class Derivation {
  external num get value;

  external set value(num v);

  external static Derivation get JS$default;

  external static set JS$default(Derivation v);

  external static Derivation get custom;

  external static set custom(Derivation v);

  external static Derivation get bitcoinSegwit;

  external static set bitcoinSegwit(Derivation v);

  external static Derivation get bitcoinLegacy;

  external static set bitcoinLegacy(Derivation v);

  external static Derivation get litecoinLegacy;

  external static set litecoinLegacy(Derivation v);

  external static Derivation get solanaSolana;

  external static set solanaSolana(Derivation v);
}

@JS()
class AnyAddress {
  external static bool equal(AnyAddress lhs, AnyAddress rhs);

  external static bool isValid(String string, CoinType coin);

  external static AnyAddress createWithString(String string, CoinType coin);

  external static AnyAddress createWithPublicKey(PublicKey publicKey, CoinType coin);

  external String description();

  external CoinType coin();

  external Uint8List data();

  external void delete();
}

@JS()
class Account {
  external static Account create(String address, CoinType coin, Derivation derivation,
      String derivationPath, String publicKey, String extendedPublicKey);

  external String address();

  external Derivation derivation();

  external String derivationPath();

  external String publicKey();

  external String extendedPublicKey();

  external CoinType coin();

  external void delete();
}

@JS()
class DataVector {
  external static DataVector create();

  external static DataVector createWithData(dynamic /*Uint8List|Buffer*/ data);

  external num size();

  external void add(dynamic /*Uint8List|Buffer*/ data);

  external Uint8List get(num index);

  external void delete();
}

@JS()
class Curve {
  external num get value;

  external set value(num v);

  external static Curve get secp256k1;

  external static set secp256k1(Curve v);

  external static Curve get ed25519;

  external static set ed25519(Curve v);

  external static Curve get ed25519Blake2bNano;

  external static set ed25519Blake2bNano(Curve v);

  external static Curve get curve25519;

  external static set curve25519(Curve v);

  external static Curve get nist256p1;

  external static set nist256p1(Curve v);

  external static Curve get ed25519Extended;

  external static set ed25519Extended(Curve v);
}

@JS()
external String describeCurve(Curve value);

@JS()
class RippleXAddress {
  external static bool equal(RippleXAddress lhs, RippleXAddress rhs);

  external static bool isValidString(String string);

  external static RippleXAddress createWithString(String string);

  external static RippleXAddress createWithPublicKey(PublicKey publicKey, num tag);

  external String description();

  external num tag();

  external void delete();
}

@JS()
class EthereumAbiValue {
  external static Uint8List encodeBool(bool value);

  external static Uint8List encodeInt32(num value);

  external static Uint8List encodeUInt32(num value);

  external static Uint8List encodeInt256(dynamic /*Uint8List|Buffer*/ value);

  external static Uint8List encodeUInt256(dynamic /*Uint8List|Buffer*/ value);

  external static Uint8List encodeAddress(dynamic /*Uint8List|Buffer*/ value);

  external static Uint8List encodeString(String value);

  external static Uint8List encodeBytes(dynamic /*Uint8List|Buffer*/ value);

  external static Uint8List encodeBytesDyn(dynamic /*Uint8List|Buffer*/ value);

  external static String decodeUInt256(dynamic /*Uint8List|Buffer*/ input);

  external static String decodeValue(dynamic /*Uint8List|Buffer*/ input, String type);

  external static String decodeArray(dynamic /*Uint8List|Buffer*/ input, String type);
}

@JS()
class TransactionCompiler {
  external static Uint8List buildInput(CoinType coinType, String from, String to, String amount,
      String asset, String memo, String chainId);

  external static Uint8List preImageHashes(
      CoinType coinType, dynamic /*Uint8List|Buffer*/ txInputData);

  external static Uint8List compileWithSignatures(CoinType coinType,
      dynamic /*Uint8List|Buffer*/ txInputData, DataVector signatures, DataVector publicKeys);
}

@JS()
class AESPaddingMode {
  external num get value;

  external set value(num v);

  external static AESPaddingMode get zero;

  external static set zero(AESPaddingMode v);

  external static AESPaddingMode get pkcs7;

  external static set pkcs7(AESPaddingMode v);
}

@JS()
class EthereumAbi {
  external static Uint8List encode(EthereumAbiFunction fn);

  external static bool decodeOutput(EthereumAbiFunction fn, dynamic /*Uint8List|Buffer*/ encoded);

  external static String decodeCall(dynamic /*Uint8List|Buffer*/ data, String abi);

  external static Uint8List encodeTyped(String messageJson);
}

@JS()
class PBKDF2 {
  external static Uint8List hmacSha256(dynamic /*Uint8List|Buffer*/ password,
      dynamic /*Uint8List|Buffer*/ salt, num iterations, num dkLen);

  external static Uint8List hmacSha512(dynamic /*Uint8List|Buffer*/ password,
      dynamic /*Uint8List|Buffer*/ salt, num iterations, num dkLen);
}

@JS()
class FIOAccount {
  external static FIOAccount createWithString(String string);

  external String description();

  external void delete();
}

@JS()
class HRP {
  external num get value;

  external set value(num v);

  external static HRP get unknown;

  external static set unknown(HRP v);

  external static HRP get bitcoin;

  external static set bitcoin(HRP v);

  external static HRP get litecoin;

  external static set litecoin(HRP v);

  external static HRP get viacoin;

  external static set viacoin(HRP v);

  external static HRP get groestlcoin;

  external static set groestlcoin(HRP v);

  external static HRP get digiByte;

  external static set digiByte(HRP v);

  external static HRP get monacoin;

  external static set monacoin(HRP v);

  external static HRP get cosmos;

  external static set cosmos(HRP v);

  external static HRP get bitcoinCash;

  external static set bitcoinCash(HRP v);

  external static HRP get bitcoinGold;

  external static set bitcoinGold(HRP v);

  external static HRP get ioTeX;

  external static set ioTeX(HRP v);

  external static HRP get zilliqa;

  external static set zilliqa(HRP v);

  external static HRP get terra;

  external static set terra(HRP v);

  external static HRP get cryptoOrg;

  external static set cryptoOrg(HRP v);

  external static HRP get kava;

  external static set kava(HRP v);

  external static HRP get oasis;

  external static set oasis(HRP v);

  external static HRP get bluzelle;

  external static set bluzelle(HRP v);

  external static HRP get bandChain;

  external static set bandChain(HRP v);

  external static HRP get elrond;

  external static set elrond(HRP v);

  external static HRP get binance;

  external static set binance(HRP v);

  external static HRP get ecash;

  external static set ecash(HRP v);

  external static HRP get thorchain;

  external static set thorchain(HRP v);

  external static HRP get harmony;

  external static set harmony(HRP v);

  external static HRP get cardano;

  external static set cardano(HRP v);

  external static HRP get qtum;

  external static set qtum(HRP v);

  external static HRP get osmosis;

  external static set osmosis(HRP v);

  external static HRP get nativeEvmos;

  external static set nativeEvmos(HRP v);
}

@JS()
external String describeHRP(HRP value);

@JS()
class AES {
  external static Uint8List encryptCBC(dynamic /*Uint8List|Buffer*/ key,
      dynamic /*Uint8List|Buffer*/ data, dynamic /*Uint8List|Buffer*/ iv, AESPaddingMode mode);

  external static Uint8List decryptCBC(dynamic /*Uint8List|Buffer*/ key,
      dynamic /*Uint8List|Buffer*/ data, dynamic /*Uint8List|Buffer*/ iv, AESPaddingMode mode);

  external static Uint8List encryptCTR(dynamic /*Uint8List|Buffer*/ key,
      dynamic /*Uint8List|Buffer*/ data, dynamic /*Uint8List|Buffer*/ iv);

  external static Uint8List decryptCTR(dynamic /*Uint8List|Buffer*/ key,
      dynamic /*Uint8List|Buffer*/ data, dynamic /*Uint8List|Buffer*/ iv);
}

@JS()
class SS58AddressType {
  external num get value;

  external set value(num v);

  external static SS58AddressType get polkadot;

  external static set polkadot(SS58AddressType v);

  external static SS58AddressType get kusama;

  external static set kusama(SS58AddressType v);
}

@JS()
class THORChainSwap {
  external static Uint8List buildSwap(dynamic /*Uint8List|Buffer*/ input);
}

@JS()
class Blockchain {
  external num get value;

  external set value(num v);

  external static Blockchain get bitcoin;

  external static set bitcoin(Blockchain v);

  external static Blockchain get ethereum;

  external static set ethereum(Blockchain v);

  external static Blockchain get vechain;

  external static set vechain(Blockchain v);

  external static Blockchain get tron;

  external static set tron(Blockchain v);

  external static Blockchain get icon;

  external static set icon(Blockchain v);

  external static Blockchain get binance;

  external static set binance(Blockchain v);

  external static Blockchain get ripple;

  external static set ripple(Blockchain v);

  external static Blockchain get tezos;

  external static set tezos(Blockchain v);

  external static Blockchain get nimiq;

  external static set nimiq(Blockchain v);

  external static Blockchain get stellar;

  external static set stellar(Blockchain v);

  external static Blockchain get aion;

  external static set aion(Blockchain v);

  external static Blockchain get cosmos;

  external static set cosmos(Blockchain v);

  external static Blockchain get theta;

  external static set theta(Blockchain v);

  external static Blockchain get ontology;

  external static set ontology(Blockchain v);

  external static Blockchain get zilliqa;

  external static set zilliqa(Blockchain v);

  external static Blockchain get ioTeX;

  external static set ioTeX(Blockchain v);

  external static Blockchain get eos;

  external static set eos(Blockchain v);

  external static Blockchain get nano;

  external static set nano(Blockchain v);

  external static Blockchain get nuls;

  external static set nuls(Blockchain v);

  external static Blockchain get waves;

  external static set waves(Blockchain v);

  external static Blockchain get aeternity;

  external static set aeternity(Blockchain v);

  external static Blockchain get nebulas;

  external static set nebulas(Blockchain v);

  external static Blockchain get fio;

  external static set fio(Blockchain v);

  external static Blockchain get solana;

  external static set solana(Blockchain v);

  external static Blockchain get harmony;

  external static set harmony(Blockchain v);

  external static Blockchain get near;

  external static set near(Blockchain v);

  external static Blockchain get algorand;

  external static set algorand(Blockchain v);

  external static Blockchain get polkadot;

  external static set polkadot(Blockchain v);

  external static Blockchain get cardano;

  external static set cardano(Blockchain v);

  external static Blockchain get neo;

  external static set neo(Blockchain v);

  external static Blockchain get filecoin;

  external static set filecoin(Blockchain v);

  external static Blockchain get elrondNetwork;

  external static set elrondNetwork(Blockchain v);

  external static Blockchain get oasisNetwork;

  external static set oasisNetwork(Blockchain v);

  external static Blockchain get decred;

  external static set decred(Blockchain v);

  external static Blockchain get zcash;

  external static set zcash(Blockchain v);

  external static Blockchain get groestlcoin;

  external static set groestlcoin(Blockchain v);

  external static Blockchain get thorchain;

  external static set thorchain(Blockchain v);

  external static Blockchain get ronin;

  external static set ronin(Blockchain v);

  external static Blockchain get kusama;

  external static set kusama(Blockchain v);
}

@JS()
class GroestlcoinAddress {
  external static bool equal(GroestlcoinAddress lhs, GroestlcoinAddress rhs);

  external static bool isValidString(String string);

  external static GroestlcoinAddress createWithString(String string);

  external static GroestlcoinAddress createWithPublicKey(PublicKey publicKey, num prefix);

  external String description();

  external void delete();
}

@JS()
class HDVersion {
  external num get value;

  external set value(num v);

  external static HDVersion get none;

  external static set none(HDVersion v);

  external static HDVersion get xpub;

  external static set xpub(HDVersion v);

  external static HDVersion get xprv;

  external static set xprv(HDVersion v);

  external static HDVersion get ypub;

  external static set ypub(HDVersion v);

  external static HDVersion get yprv;

  external static set yprv(HDVersion v);

  external static HDVersion get zpub;

  external static set zpub(HDVersion v);

  external static HDVersion get zprv;

  external static set zprv(HDVersion v);

  external static HDVersion get ltub;

  external static set ltub(HDVersion v);

  external static HDVersion get ltpv;

  external static set ltpv(HDVersion v);

  external static HDVersion get mtub;

  external static set mtub(HDVersion v);

  external static HDVersion get mtpv;

  external static set mtpv(HDVersion v);

  external static HDVersion get dpub;

  external static set dpub(HDVersion v);

  external static HDVersion get dprv;

  external static set dprv(HDVersion v);

  external static HDVersion get dgub;

  external static set dgub(HDVersion v);

  external static HDVersion get dgpv;

  external static set dgpv(HDVersion v);
}

@JS()
class PublicKeyType {
  external num get value;

  external set value(num v);

  external static PublicKeyType get secp256k1;

  external static set secp256k1(PublicKeyType v);

  external static PublicKeyType get secp256k1Extended;

  external static set secp256k1Extended(PublicKeyType v);

  external static PublicKeyType get nist256p1;

  external static set nist256p1(PublicKeyType v);

  external static PublicKeyType get nist256p1Extended;

  external static set nist256p1Extended(PublicKeyType v);

  external static PublicKeyType get ed25519;

  external static set ed25519(PublicKeyType v);

  external static PublicKeyType get ed25519Blake2b;

  external static set ed25519Blake2b(PublicKeyType v);

  external static PublicKeyType get curve25519;

  external static set curve25519(PublicKeyType v);

  external static PublicKeyType get ed25519Extended;

  external static set ed25519Extended(PublicKeyType v);
}

@JS()
class Hash {
  external static Uint8List sha1(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List sha256(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List sha512(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List sha512_256(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List keccak256(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List keccak512(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List sha3_256(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List sha3_512(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List ripemd(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List blake256(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List blake2b(dynamic /*Uint8List|Buffer*/ data, num size);

  external static Uint8List groestl512(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List sha256SHA256(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List sha256RIPEMD(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List sha3_256RIPEMD(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List blake256Blake256(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List blake256RIPEMD(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List groestl512Groestl512(dynamic /*Uint8List|Buffer*/ data);
}

@JS()
class Cardano {
  external static num minAdaAmount(dynamic /*Uint8List|Buffer*/ tokenBundle);
}

@JS()
class StellarVersionByte {
  external num get value;

  external set value(num v);

  external static StellarVersionByte get accountID;

  external static set accountID(StellarVersionByte v);

  external static StellarVersionByte get seed;

  external static set seed(StellarVersionByte v);

  external static StellarVersionByte get preAuthTX;

  external static set preAuthTX(StellarVersionByte v);

  external static StellarVersionByte get sha256Hash;

  external static set sha256Hash(StellarVersionByte v);
}

@JS()
class StellarPassphrase {
  external num get value;

  external set value(num v);

  external static StellarPassphrase get stellar;

  external static set stellar(StellarPassphrase v);

  external static StellarPassphrase get kin;

  external static set kin(StellarPassphrase v);
}

@JS()
external String describeStellarPassphrase(StellarPassphrase value);

@JS()
class CoinType {
  external num get value;

  external set value(num v);

  external static CoinType get aeternity;

  external static set aeternity(CoinType v);

  external static CoinType get aion;

  external static set aion(CoinType v);

  external static CoinType get binance;

  external static set binance(CoinType v);

  external static CoinType get bitcoin;

  external static set bitcoin(CoinType v);

  external static CoinType get bitcoinCash;

  external static set bitcoinCash(CoinType v);

  external static CoinType get bitcoinGold;

  external static set bitcoinGold(CoinType v);

  external static CoinType get callisto;

  external static set callisto(CoinType v);

  external static CoinType get cardano;

  external static set cardano(CoinType v);

  external static CoinType get cosmos;

  external static set cosmos(CoinType v);

  external static CoinType get dash;

  external static set dash(CoinType v);

  external static CoinType get decred;

  external static set decred(CoinType v);

  external static CoinType get digiByte;

  external static set digiByte(CoinType v);

  external static CoinType get dogecoin;

  external static set dogecoin(CoinType v);

  external static CoinType get eos;

  external static set eos(CoinType v);

  external static CoinType get ethereum;

  external static set ethereum(CoinType v);

  external static CoinType get ethereumClassic;

  external static set ethereumClassic(CoinType v);

  external static CoinType get fio;

  external static set fio(CoinType v);

  external static CoinType get goChain;

  external static set goChain(CoinType v);

  external static CoinType get groestlcoin;

  external static set groestlcoin(CoinType v);

  external static CoinType get icon;

  external static set icon(CoinType v);

  external static CoinType get ioTeX;

  external static set ioTeX(CoinType v);

  external static CoinType get kava;

  external static set kava(CoinType v);

  external static CoinType get kin;

  external static set kin(CoinType v);

  external static CoinType get litecoin;

  external static set litecoin(CoinType v);

  external static CoinType get monacoin;

  external static set monacoin(CoinType v);

  external static CoinType get nebulas;

  external static set nebulas(CoinType v);

  external static CoinType get nuls;

  external static set nuls(CoinType v);

  external static CoinType get nano;

  external static set nano(CoinType v);

  external static CoinType get near;

  external static set near(CoinType v);

  external static CoinType get nimiq;

  external static set nimiq(CoinType v);

  external static CoinType get ontology;

  external static set ontology(CoinType v);

  external static CoinType get poanetwork;

  external static set poanetwork(CoinType v);

  external static CoinType get qtum;

  external static set qtum(CoinType v);

  external static CoinType get xrp;

  external static set xrp(CoinType v);

  external static CoinType get solana;

  external static set solana(CoinType v);

  external static CoinType get stellar;

  external static set stellar(CoinType v);

  external static CoinType get tezos;

  external static set tezos(CoinType v);

  external static CoinType get theta;

  external static set theta(CoinType v);

  external static CoinType get thunderToken;

  external static set thunderToken(CoinType v);

  external static CoinType get neo;

  external static set neo(CoinType v);

  external static CoinType get tomoChain;

  external static set tomoChain(CoinType v);

  external static CoinType get tron;

  external static set tron(CoinType v);

  external static CoinType get veChain;

  external static set veChain(CoinType v);

  external static CoinType get viacoin;

  external static set viacoin(CoinType v);

  external static CoinType get wanchain;

  external static set wanchain(CoinType v);

  external static CoinType get zcash;

  external static set zcash(CoinType v);

  external static CoinType get firo;

  external static set firo(CoinType v);

  external static CoinType get zilliqa;

  external static set zilliqa(CoinType v);

  external static CoinType get zelcash;

  external static set zelcash(CoinType v);

  external static CoinType get ravencoin;

  external static set ravencoin(CoinType v);

  external static CoinType get waves;

  external static set waves(CoinType v);

  external static CoinType get terra;

  external static set terra(CoinType v);

  external static CoinType get harmony;

  external static set harmony(CoinType v);

  external static CoinType get algorand;

  external static set algorand(CoinType v);

  external static CoinType get kusama;

  external static set kusama(CoinType v);

  external static CoinType get polkadot;

  external static set polkadot(CoinType v);

  external static CoinType get filecoin;

  external static set filecoin(CoinType v);

  external static CoinType get elrond;

  external static set elrond(CoinType v);

  external static CoinType get bandChain;

  external static set bandChain(CoinType v);

  external static CoinType get smartChainLegacy;

  external static set smartChainLegacy(CoinType v);

  external static CoinType get smartChain;

  external static set smartChain(CoinType v);

  external static CoinType get oasis;

  external static set oasis(CoinType v);

  external static CoinType get polygon;

  external static set polygon(CoinType v);

  external static CoinType get thorchain;

  external static set thorchain(CoinType v);

  external static CoinType get bluzelle;

  external static set bluzelle(CoinType v);

  external static CoinType get optimism;

  external static set optimism(CoinType v);

  external static CoinType get arbitrum;

  external static set arbitrum(CoinType v);

  external static CoinType get ecochain;

  external static set ecochain(CoinType v);

  external static CoinType get avalancheCChain;

  external static set avalancheCChain(CoinType v);

  external static CoinType get xdai;

  external static set xdai(CoinType v);

  external static CoinType get fantom;

  external static set fantom(CoinType v);

  external static CoinType get cryptoOrg;

  external static set cryptoOrg(CoinType v);

  external static CoinType get celo;

  external static set celo(CoinType v);

  external static CoinType get ronin;

  external static set ronin(CoinType v);

  external static CoinType get osmosis;

  external static set osmosis(CoinType v);

  external static CoinType get ecash;

  external static set ecash(CoinType v);

  external static CoinType get cronosChain;

  external static set cronosChain(CoinType v);

  external static CoinType get smartBitcoinCash;

  external static set smartBitcoinCash(CoinType v);

  external static CoinType get kuCoinCommunityChain;

  external static set kuCoinCommunityChain(CoinType v);

  external static CoinType get boba;

  external static set boba(CoinType v);

  external static CoinType get metis;

  external static set metis(CoinType v);

  external static CoinType get aurora;

  external static set aurora(CoinType v);

  external static CoinType get evmos;

  external static set evmos(CoinType v);

  external static CoinType get nativeEvmos;

  external static set nativeEvmos(CoinType v);

  external static CoinType get moonriver;

  external static set moonriver(CoinType v);

  external static CoinType get moonbeam;

  external static set moonbeam(CoinType v);

  external static CoinType get klaytn;

  external static set klaytn(CoinType v);
}

@JS()
class StoredKeyEncryptionLevel {
  external num get value;

  external set value(num v);

  external static StoredKeyEncryptionLevel get JS$default;

  external static set JS$default(StoredKeyEncryptionLevel v);

  external static StoredKeyEncryptionLevel get minimal;

  external static set minimal(StoredKeyEncryptionLevel v);

  external static StoredKeyEncryptionLevel get weak;

  external static set weak(StoredKeyEncryptionLevel v);

  external static StoredKeyEncryptionLevel get standard;

  external static set standard(StoredKeyEncryptionLevel v);
}

@JS()
class EthereumAbiFunction {
  external static EthereumAbiFunction createWithString(String name);

  external String getType();

  external num addParamUInt8(num val, bool isOutput);

  external num addParamUInt16(num val, bool isOutput);

  external num addParamUInt32(num val, bool isOutput);

  external num addParamUInt64(num val, bool isOutput);

  external num addParamUInt256(dynamic /*Uint8List|Buffer*/ val, bool isOutput);

  external num addParamUIntN(num bits, dynamic /*Uint8List|Buffer*/ val, bool isOutput);

  external num addParamInt8(num val, bool isOutput);

  external num addParamInt16(num val, bool isOutput);

  external num addParamInt32(num val, bool isOutput);

  external num addParamInt64(num val, bool isOutput);

  external num addParamInt256(dynamic /*Uint8List|Buffer*/ val, bool isOutput);

  external num addParamIntN(num bits, dynamic /*Uint8List|Buffer*/ val, bool isOutput);

  external num addParamBool(bool val, bool isOutput);

  external num addParamString(String val, bool isOutput);

  external num addParamAddress(dynamic /*Uint8List|Buffer*/ val, bool isOutput);

  external num addParamBytes(dynamic /*Uint8List|Buffer*/ val, bool isOutput);

  external num addParamBytesFix(num size, dynamic /*Uint8List|Buffer*/ val, bool isOutput);

  external num addParamArray(bool isOutput);

  external num getParamUInt8(num idx, bool isOutput);

  external num getParamUInt64(num idx, bool isOutput);

  external Uint8List getParamUInt256(num idx, bool isOutput);

  external bool getParamBool(num idx, bool isOutput);

  external String getParamString(num idx, bool isOutput);

  external Uint8List getParamAddress(num idx, bool isOutput);

  external num addInArrayParamUInt8(num arrayIdx, num val);

  external num addInArrayParamUInt16(num arrayIdx, num val);

  external num addInArrayParamUInt32(num arrayIdx, num val);

  external num addInArrayParamUInt64(num arrayIdx, num val);

  external num addInArrayParamUInt256(num arrayIdx, dynamic /*Uint8List|Buffer*/ val);

  external num addInArrayParamUIntN(num arrayIdx, num bits, dynamic /*Uint8List|Buffer*/ val);

  external num addInArrayParamInt8(num arrayIdx, num val);

  external num addInArrayParamInt16(num arrayIdx, num val);

  external num addInArrayParamInt32(num arrayIdx, num val);

  external num addInArrayParamInt64(num arrayIdx, num val);

  external num addInArrayParamInt256(num arrayIdx, dynamic /*Uint8List|Buffer*/ val);

  external num addInArrayParamIntN(num arrayIdx, num bits, dynamic /*Uint8List|Buffer*/ val);

  external num addInArrayParamBool(num arrayIdx, bool val);

  external num addInArrayParamString(num arrayIdx, String val);

  external num addInArrayParamAddress(num arrayIdx, dynamic /*Uint8List|Buffer*/ val);

  external num addInArrayParamBytes(num arrayIdx, dynamic /*Uint8List|Buffer*/ val);

  external num addInArrayParamBytesFix(num arrayIdx, num size, dynamic /*Uint8List|Buffer*/ val);

  external void delete();
}

@JS()
class CoinTypeConfiguration {
  external static String getSymbol(CoinType type);

  external static num getDecimals(CoinType type);

  external static String getTransactionURL(CoinType type, String transactionID);

  external static String getAccountURL(CoinType type, String accountID);

  external static String getID(CoinType type);

  external static String getName(CoinType type);
}

@JS()
class BitcoinAddress {
  external static bool equal(BitcoinAddress lhs, BitcoinAddress rhs);

  external static bool isValid(dynamic /*Uint8List|Buffer*/ data);

  external static bool isValidString(String string);

  external static BitcoinAddress createWithString(String string);

  external static BitcoinAddress createWithData(dynamic /*Uint8List|Buffer*/ data);

  external static BitcoinAddress createWithPublicKey(PublicKey publicKey, num prefix);

  external String description();

  external num prefix();

  external Uint8List keyhash();

  external void delete();
}

@JS()
class SegwitAddress {
  external static bool equal(SegwitAddress lhs, SegwitAddress rhs);

  external static bool isValidString(String string);

  external static SegwitAddress createWithString(String string);

  external static SegwitAddress createWithPublicKey(HRP hrp, PublicKey publicKey);

  external String description();

  external HRP hrp();

  external num witnessVersion();

  external Uint8List witnessProgram();

  external void delete();
}

@JS()
class StellarMemoType {
  external num get value;

  external set value(num v);

  external static StellarMemoType get none;

  external static set none(StellarMemoType v);

  external static StellarMemoType get text;

  external static set text(StellarMemoType v);

  external static StellarMemoType get id;

  external static set id(StellarMemoType v);

  external static StellarMemoType get hash;

  external static set hash(StellarMemoType v);

  external static StellarMemoType get JS$return;

  external static set JS$return(StellarMemoType v);
}

@JS()
class Mnemonic {
  external static bool isValid(String mnemonic);

  external static bool isValidWord(String word);

  external static String suggest(String prefix);
}

@JS()
class NEARAccount {
  external static NEARAccount createWithString(String string);

  external String description();

  external void delete();
}

@JS()
class StoredKey {
  external static StoredKey load(String path);

  external static StoredKey importPrivateKey(dynamic /*Uint8List|Buffer*/ privateKey, String name,
      dynamic /*Uint8List|Buffer*/ password, CoinType coin);

  external static StoredKey importHDWallet(
      String mnemonic, String name, dynamic /*Uint8List|Buffer*/ password, CoinType coin);

  external static StoredKey importJSON(dynamic /*Uint8List|Buffer*/ json);

  external static StoredKey createLevel(
      String name, dynamic /*Uint8List|Buffer*/ password, StoredKeyEncryptionLevel encryptionLevel);

  external static StoredKey create(String name, dynamic /*Uint8List|Buffer*/ password);

  external String identifier();

  external String name();

  external bool isMnemonic();

  external num accountCount();

  external String encryptionParameters();

  external Account account(num index);

  external Account accountForCoin(CoinType coin, HDWallet wallet);

  external Account accountForCoinDerivation(CoinType coin, Derivation derivation, HDWallet wallet);

  external void addAccountDerivation(String address, CoinType coin, Derivation derivation,
      String derivationPath, String publicKey, String extendedPublicKey);

  external void addAccount(String address, CoinType coin, String derivationPath, String publicKey,
      String extendedPublicKey);

  external void removeAccountForCoin(CoinType coin);

  external void removeAccountForCoinDerivation(CoinType coin, Derivation derivation);

  external void removeAccountForCoinDerivationPath(CoinType coin, String derivationPath);

  external bool store(String path);

  external Uint8List decryptPrivateKey(dynamic /*Uint8List|Buffer*/ password);

  external String decryptMnemonic(dynamic /*Uint8List|Buffer*/ password);

  external PrivateKey privateKey(CoinType coin, dynamic /*Uint8List|Buffer*/ password);

  external HDWallet wallet(dynamic /*Uint8List|Buffer*/ password);

  external Uint8List exportJSON();

  external bool fixAddresses(dynamic /*Uint8List|Buffer*/ password);

  external void delete();
}

@JS()
class PublicKey {
  external static bool isValid(dynamic /*Uint8List|Buffer*/ data, PublicKeyType type);

  external static PublicKey recover(
      dynamic /*Uint8List|Buffer*/ signature, dynamic /*Uint8List|Buffer*/ message);

  external static PublicKey createWithData(dynamic /*Uint8List|Buffer*/ data, PublicKeyType type);

  external bool isCompressed();

  external PublicKey compressed();

  external PublicKey uncompressed();

  external Uint8List data();

  external PublicKeyType keyType();

  external String description();

  external bool verify(
      dynamic /*Uint8List|Buffer*/ signature, dynamic /*Uint8List|Buffer*/ message);

  external bool verifyAsDER(
      dynamic /*Uint8List|Buffer*/ signature, dynamic /*Uint8List|Buffer*/ message);

  external bool verifySchnorr(
      dynamic /*Uint8List|Buffer*/ signature, dynamic /*Uint8List|Buffer*/ message);

  external void delete();
}

@JS()
class EthereumChainID {
  external num get value;

  external set value(num v);

  external static EthereumChainID get ethereum;

  external static set ethereum(EthereumChainID v);

  external static EthereumChainID get classic;

  external static set classic(EthereumChainID v);

  external static EthereumChainID get poa;

  external static set poa(EthereumChainID v);

  external static EthereumChainID get vechain;

  external static set vechain(EthereumChainID v);

  external static EthereumChainID get callisto;

  external static set callisto(EthereumChainID v);

  external static EthereumChainID get tomochain;

  external static set tomochain(EthereumChainID v);

  external static EthereumChainID get polygon;

  external static set polygon(EthereumChainID v);

  external static EthereumChainID get thundertoken;

  external static set thundertoken(EthereumChainID v);

  external static EthereumChainID get gochain;

  external static set gochain(EthereumChainID v);

  external static EthereumChainID get celo;

  external static set celo(EthereumChainID v);

  external static EthereumChainID get wanchain;

  external static set wanchain(EthereumChainID v);

  external static EthereumChainID get cronos;

  external static set cronos(EthereumChainID v);

  external static EthereumChainID get optimism;

  external static set optimism(EthereumChainID v);

  external static EthereumChainID get xdai;

  external static set xdai(EthereumChainID v);

  external static EthereumChainID get smartbch;

  external static set smartbch(EthereumChainID v);

  external static EthereumChainID get fantom;

  external static set fantom(EthereumChainID v);

  external static EthereumChainID get boba;

  external static set boba(EthereumChainID v);

  external static EthereumChainID get kcc;

  external static set kcc(EthereumChainID v);

  external static EthereumChainID get heco;

  external static set heco(EthereumChainID v);

  external static EthereumChainID get metis;

  external static set metis(EthereumChainID v);

  external static EthereumChainID get moonbeam;

  external static set moonbeam(EthereumChainID v);

  external static EthereumChainID get moonriver;

  external static set moonriver(EthereumChainID v);

  external static EthereumChainID get ronin;

  external static set ronin(EthereumChainID v);

  external static EthereumChainID get klaytn;

  external static set klaytn(EthereumChainID v);

  external static EthereumChainID get avalanchec;

  external static set avalanchec(EthereumChainID v);

  external static EthereumChainID get evmos;

  external static set evmos(EthereumChainID v);

  external static EthereumChainID get arbitrum;

  external static set arbitrum(EthereumChainID v);

  external static EthereumChainID get smartchain;

  external static set smartchain(EthereumChainID v);

  external static EthereumChainID get aurora;

  external static set aurora(EthereumChainID v);
}

@JS()
class BitcoinSigHashType {
  external num get value;

  external set value(num v);

  external static BitcoinSigHashType get all;

  external static set all(BitcoinSigHashType v);

  external static BitcoinSigHashType get none;

  external static set none(BitcoinSigHashType v);

  external static BitcoinSigHashType get single;

  external static set single(BitcoinSigHashType v);

  external static BitcoinSigHashType get fork;

  external static set fork(BitcoinSigHashType v);

  external static BitcoinSigHashType get forkBTG;

  external static set forkBTG(BitcoinSigHashType v);
}

@JS()
class Base58 {
  external static String encode(dynamic /*Uint8List|Buffer*/ data);

  external static String encodeNoCheck(dynamic /*Uint8List|Buffer*/ data);

  external static Uint8List decode(String string);

  external static Uint8List decodeNoCheck(String string);
}

@JS()
class Purpose {
  external num get value;

  external set value(num v);

  external static Purpose get bip44;

  external static set bip44(Purpose v);

  external static Purpose get bip49;

  external static set bip49(Purpose v);

  external static Purpose get bip84;

  external static set bip84(Purpose v);

  external static Purpose get bip1852;

  external static set bip1852(Purpose v);
}
