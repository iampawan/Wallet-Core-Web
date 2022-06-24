const { TW } = require('@trustwallet/wallet-core');

const wallet_core_web = {
    "tw": TW
}

if (window.dartInteropt == undefined) {
    window.dartInteropt = new Object();
}


window.dartInteropt.wallet_core_web = wallet_core_web;






