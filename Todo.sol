// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Todo{

    struct Task{
        string name;
        bool status;
    }
    
    Task[] tasks;

    function addTask(string memory taskName)public {
        Task memory task;
        task.name = taskName;

        tasks.push(task);
    }
    
       function updateStatus(uint index) public{
        tasks[index].status = !tasks[index].status;
    }
    
    
    function updateName( uint index , string memory newName) public {
        tasks[index].name = newName;
    }
    
    function list() public view returns(Task[] memory){
        return tasks;
    }
    
     function removeTask(uint index) public { // removing Items
        for(uint i = index; i<tasks.length -1 ; i++){
            tasks[i] = tasks[i+1];
        }
        
        tasks.pop();
        
    }


    
}
