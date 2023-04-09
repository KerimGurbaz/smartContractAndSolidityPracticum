// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ConstructorExample{


    address public owner;
    string public name;
    uint public age;


      constructor(string memory _name, uint _age){
        owner = msg.sender;
        name = _name;
        age = _age;
    }
    
       modifier onlyOwner(){
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }
}
