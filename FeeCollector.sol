// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FeeCollector{
   address public owner ;
      uint public balance;

    constructor(){
        owner = msg.sender;

    }
    
    receive() payable external{
        balance += msg.value;
    }

    function withdraw(uint amount , address payable destAddr)public{
        require(msg.sender == owner, "Only owner can withdraw");
        require(msg.sender == owner, "Only owner can withdraw");
        require (amount <= balance, 'Insuffucient funds');
        destAddr.transfer(amount);
        balance -= amount;
    }

}
