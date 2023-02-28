//SPDX-License-Identifier: MIT
pragma solidity 0.8.16;


import './IERC20.sol';

contract CrowdFund{

contract CrowdFund{
    struct Campaign{
        address creator;
        uint goal;
        uint32 startAt;
        uint32 endAt;
        bool claimed;
    }
    
        IERC20 public immutable token;
    uint public count;
    mapping(uint=> Campign) public campigns;
    mapping(uint => mapping(address => uint)) public pledgedAmount;
    
    
    constructor(address _token){

        token = IERC20(_token);
    }


    function launch(
        uint _goal,
        uint32 _startAt,
        uint32 _endAt
    ) external{
        require(_startAt >= block.timestamp, "start at < now");
        require(_endAt >= _startAt, "end at < start at");
        require(_endAt <= block.timestamp + 90 days, "end at > max duration");
    }
}
