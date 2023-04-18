contract ModifierExample{
    address public owner;
    uint public myNumber;

    constructor(uint _myNumber){
        owner = msg.sender;
        myNumber = _myNumber;
    }
