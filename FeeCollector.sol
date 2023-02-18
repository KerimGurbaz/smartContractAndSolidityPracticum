// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FeeCollector{
   address public owner ;

    constructor(){
        owner = msg.sender;

    }

}
