
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;


contract Error{
    function testRequire(uint _i) public pure {
        require(_i <=10, 'i > 10');
        // code
    }
}
