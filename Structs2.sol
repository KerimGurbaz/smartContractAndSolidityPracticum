// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Structs{
    struct User{
        string name;
        uint age;
        address wallet;
    }
    
      User[] public users;

    function doOperations() external{
        User memory user1 = User("Joe", 34 , msg.sender);
        User memory user2 = User({name: "Alice", age:23}, wallet:msg.sender);
        User memory user3;
        
        user3.name = "John";
        user3.age = 43;
        user3.wallet = msg.sender;

        users.push(user1);
        users.push(user2);
        users.push(user3);
    }
}
