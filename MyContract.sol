contract MyContract {
    string public myString;

    constructor(string memory _myString) {
        require(bytes(_myString).length > 0, "String cannot be empty");
        myString = _myString;
    }
}

contract MyFactory {
    event ContractCreated(address indexed newContract);

    function createContract(string memory _myString) public {
        address newContract = address(new MyContract(_myString));
        emit ContractCreated(newContract);
    }
