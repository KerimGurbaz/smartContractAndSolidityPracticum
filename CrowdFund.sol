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


    function launch(
        uint _goal,
        uint32 _startAt,
        uint32 _endAt
    ) external{
        
    }
}
