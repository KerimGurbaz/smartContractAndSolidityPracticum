// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract ControlStructures{
    function ifElse(uint x) public pure returns(uint256){
        if(x>10){
            return x + 1;
        }
        return x-1;
    }
    
    
    
}
