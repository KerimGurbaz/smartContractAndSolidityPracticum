// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


contract Error2{
    uint storedData;
    function set(uint x)public{
        require(x !=0, "x cannot be zero"); // require statement to check input
        storedData = x;
    }
    
     function get() public view returns(uint){
        return storedData;
    }


    
}
