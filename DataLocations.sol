// SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract DataLocations{
    struct MyStruct{
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples() external {
        myStructs[msg.sender] = MyStruct({foo:123, text:'bar'});
        MyStruct storage myStructs = myStructs[msg.sender];
        
         myStructs.text = "foo";

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo =456;

        _internal(y);

        uint memory memArr = new uint[](3);
        memArr[0] = 234;
        return memArr;
    }
}
