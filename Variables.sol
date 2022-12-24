//SPDX-License-Idendifer: Unlicensed

pragma solidity ^0.8.0;

contract Functions {
    uint public luckyNumber = 7;

    // function showNumber() public view returns(uint) {
    //     return luckyNumber;
    // }

    function setNumber(uint newNumber) public{
        luckyNumber = newNumber;
    }

    // function nothing() public pure returns(uint, bool, bool) {
    //     return(12, false, true);
    // }

    // function nothing() public pure returns(uint x, bool y , bool z) {
    //     x = 11;
    //     y = true;
    //     z = true;
    // }

    uint x = 5;
    
    function setX(uint y) public view returns(uint){
        return x * y;
    }

    function add(uint a, uint b) public view returns(uint){
        return a + b +block.timestamp;
    }

    function add2(uint a, uint b) public pure returns(uint){
        return a + b;
    }

}
