// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract ControlStructures{
    function ifElse(uint x) public pure returns(uint256){
        if(x>10){
            return x + 1;
        }
        return x-1;
    }
    
        function forLoop(uint stop) public pure returns(uint){
        uint sum = 0;
        for(uint i=0; i<10; i++){
            sum +=i;
            if(stop == i){
                break;
            }
        }
        return sum;
    }
        function whileLoop(uint number) public pure returns(uint){
        uint count = 0;
        while(number !=0 ){
            count ++;
            number --;
        }
        return count;
    }
}
