// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Bank{
    mapping (address => uint) balances;

    function deposit() public {
     balances[msg.sender] += _amount;
        
    }
    
     function checkUserBalance() public view returns(uint){
     return balances[msg.sender];
 }
 
}
