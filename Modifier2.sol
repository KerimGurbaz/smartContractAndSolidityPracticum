contract ModifierExample{
    address public owner;
    uint public myNumber;

    constructor(uint _myNumber){
        owner = msg.sender;
        myNumber = _myNumber;
    }

    modifier nlyOwnerOrAddress(address _allowedAddress){
        require(msg.sender == owner || msg.sender == _allowedAddress, "Only the owner or an allowed address can call this function");
        _;
    }
    
        function changeNumber(uint _newNumber) public onlyOwnerOrAddress(address(0x456)){
        myNumber = _newNumber;
    }
}
