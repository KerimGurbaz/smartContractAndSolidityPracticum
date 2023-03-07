contract MyContract {
    string public myString;

    constructor(string memory _myString) {
        require(bytes(_myString).length > 0, "String cannot be empty");
        myString = _myString;
    }
}
