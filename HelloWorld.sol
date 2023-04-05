// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract HelloWorld {
    string public myString = 'Hello world';
    
    function getText() public view returns(string memory){
    return myString;
    }
}
