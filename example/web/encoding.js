/**
 * Convert a hex string to a byte array
 *
 * @method hexToBytes
 * @param {string} hex
 * @return {Array} the byte array
 */
var hexToBytes = function(hex) {
    hex = hex.toString(16);

    if (!isHexStrict(hex)) {
        throw new Error('Given value "'+ hex +'" is not a valid hex string.');
    }

    hex = hex.replace(/^0x/i,'');

    for (var bytes = [], c = 0; c < hex.length; c += 2)
        bytes.push(parseInt(hex.substr(c, 2), 16));
    return bytes;
};

var isHexStrict = function (hex) {
    return ((typeof hex === 'string' || typeof hex === 'number') && /^(-)?0x[0-9a-f]*$/i.test(hex));
};
