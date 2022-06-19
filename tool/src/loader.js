import WalletCore from '@trustwallet/wallet-core';


const wallet_core_web = {

        "create": () => WalletCore
}


if (window.dartInteropt == undefined) {
        window.dartInteropt = new Object();
}

window.dartInteropt.wallet_core_web = wallet_core_web;