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
 
 
 function checkBlockTimestamp() public view returns(uint){
     return block.timestamp;
 }
 
  function withdraw(uint _amount) public{
     require(balances[msg.sender] >= amount, "You haven't got enough balance");
     balances[msg.sender] -=_amount;
     payable (msg.sender).transfer(_amount);
     
 }

 function checkUserBalance() public view returns(uint){
     return balances[msg.sender];
 }
 
  function transfer(address receiver, uint amount) public {
     require(balances[msg.sender] >= amount, "You haven't got enough balance");
     balances[msg.sender] -= amount ;// sender
     balances[receiver] += amount;
 }
 
 
 
}
