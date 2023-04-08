// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Functions{

 function viewExample() public view returns(string memory){
        return stateString;
    }
    
        function add(uint a, uint b) public view returns(uint){
        return a + b;
    }
}
