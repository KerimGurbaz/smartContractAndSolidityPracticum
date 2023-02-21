// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract TodoList{
    struct Todo{
        string text ;
        bool comleted;
    }

    Todo[] public todos;

     Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({
            text : _text,

            completed: false
        }));
    }
    
    function updateText(uint _index, string calldata _text) external {
        todos[_index].text = _text;

        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function get(uint _index) external view returns(string memory, bool){
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }
}
