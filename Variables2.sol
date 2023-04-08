// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Variables{
    string public myStateVariable = "state example";

     function add(uint a) public pure returns(uint){
        uint localUnit = 10;
        return a + localUnit;
    }
    
     function globalVariales() public view returns(address, uint, uint){
     return (msg.sender, block.timestamp, block.number);
    }
}
