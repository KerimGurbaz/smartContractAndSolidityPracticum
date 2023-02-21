// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract TodoList{
    struct Todo{
        string text ;
        bool comleted;
    }

    Todo[] public todos;

    function create() external {}
    
    function updateText() external {}

    function get() external view {}
}
