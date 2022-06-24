const { TW } = require('@trustwallet/wallet-core');

console.log(TW.Ethereum.Proto);

// console.log(WalletCore.HDWallet.create(256, "pass").mnemonic());

wallet_core_web = {
    "tw": TW
}

if (window.dartInteropt == undefined) {
    window.dartInteropt = new Object();
}


window.dartInteropt.wallet_core_web = wallet_core_web;






