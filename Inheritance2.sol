// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Parent {
    uint public parentData;

    constructor(uint _parentData){
        parentData = _parentData;
    }
}
