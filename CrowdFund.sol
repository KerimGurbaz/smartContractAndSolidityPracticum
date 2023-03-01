//SPDX-License-Identifier: MIT
pragma solidity 0.8.16;


import './IERC20.sol';

contract CrowdFund{

contract CrowdFund{
    event Launch(
        uint id,
        address indexed creator,
        uint goal,
        uint32 startAt,
        uint32 endAt
    );
    
     event Cancel (uint id);
     event Pledge(uint indexed id, address indexed caller, uint amount);
     event Unpledge(uint indexed id, address indexed caller, uint amount);
     
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
        
               count +=1;
        campaigns[count] =Campign({

            creator : msg.sender,
            goal : _goal,
            pledged:0,
            startAt: _startAt,
            endAt: _endAt,
            claimed:false
        });
        emit Launch(count, msg.sender, _goal, _startAt, _endAt
        );
    }
    
        function cancel(uint _id) external{
        Campaign memory campaign = campaigns[_id];
        require(msg.sender == campaign.creator, "not creator");
        require(block.timestamp < campaign.startAt, "started");
        delete campaigns[_id];
        emit Cancel(_id);
    }
    
        function pledge(uint _id, uint _amount) external{
        Campaign storage campaign = campaigns[_id] ;
        require(block.timestamp >= campaign.startAt, "not started");
        require(block.timestamp <= campaign.endAt, "ended");

        campaign.pledged += _amount;
        pledgedAmount[_id][msg.sender] += _amount;
        token.transferFrom(msg.sender, address(this), _amount);

        emit Pledge(_id, msg.sender, _amount);

    }
    
        function unpledge(uint _id, uint _amount) external{
        Campaign storage campaign = campaigns[_id];
        require(block.timestap <= campaign.endAt, "ended");

        campaign.pledged -= _amount;
        pledgedAmount[_id][msg.sender] -= _amount;
        token.transfer(msg.sender, _amount);

        emit Unpledge(_id, msg.sender, _amount);
    }
    
}
