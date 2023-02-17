//SPDX-License-Identifier:MIT

pragma solidity 0.8.16; 


contract VerifySig{
    function verify(address _signer, string memory _message, bytes memory _sig)
    external pure returns (bool)

    {
        bytes32 messageHash = getMessageHash(_message);
        bytes32 ethSignedMessageHash = getEthSignedMessageHash(messageHash);

        return recover(ethSignedMessageHash, _sig) ==_signer;

    }

    function getMessageHash(string memory _message) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_message));
    }

    function getEthSignedMessageHash(bytes32 _messageHash) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_messageHash));
    }
    
        function getEthSignedMessageHash(bytes32 _messageHash) public pure returns(bytes32){
        return keccak256(abi.encodePacked(
            "\x19Ethereum Signed Message:\32",
            _messageHash
            ));
    }

    function recover(bytes32 _ethSignedMessageHash, bytes memoryy _sig)
    public pure returns (address)
    {
        (bytes32 r, bytes32 s, uint8 v) = _split(_sig);
        return ecrecover(_ethSignedMessageHash, v, r, s);
    }
}
