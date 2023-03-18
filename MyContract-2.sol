pragma solidity ^0.8.0;

contract MyContract {
    string public myString;

    constructor(string memory _myString) {
        require(bytes(_myString).length > 0, "String cannot be empty");
        myString = _myString;
    }
}
