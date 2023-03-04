//SPDX-License-Identifier:MIT

pragma solidity 0.8.15;

contract Sender{
    receive() external payable {}

    function withdrawTransfer(address payable _to) public{
        _to.transfer(10);
    }

    function withdrawSend(address payable _to) public{
       bool isSent = _to.send(10);
       require(isSent, "Sending the funds was unsuccessful");
    }
}
