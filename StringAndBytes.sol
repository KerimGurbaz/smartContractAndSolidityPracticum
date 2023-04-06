
// SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

contract StringAndBytes{
    string public greeting = "Greetings";

    bytes public helloText = "Hello, World";

    string public convertedText = string(helloText);

    string private name = "Kerim";
    string public name2 = "Kerim";


}
