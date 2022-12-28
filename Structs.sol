// SPDX-License-Identifier:MIT
pragma solidity ^0.8.3;


contract Structs{
    struct Car {
        string model;
        uint year;
        address owner;

    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    functions examples() external {
        Car memory toyota = Car('Toyota', 1990, msg.sender);
        Car memory lambo = Car({model:'Lamborgini', year:1980, owner:msg.sender});
        Car memory tesla;
        tesla.model = 'Tesla';
        tesla.year = 2010;
        tesla.owner = msg.sender;
    }
}
