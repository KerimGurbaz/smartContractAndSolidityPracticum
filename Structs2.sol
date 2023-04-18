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
    }
}
