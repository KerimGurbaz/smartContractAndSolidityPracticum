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


    function add(uint x, uint y) public pure returns(uint){
        uint result = x + y;

        if(result < x || result < y){
            revert("result overflowed"); // revert statement to handle overflow
        }
        return result;
    }

    function divede(uint x, uint y) public pure returns(uint){
        assert(y != 0); // assert statement to check for division by zero
        return x/y;
    }
    
}
