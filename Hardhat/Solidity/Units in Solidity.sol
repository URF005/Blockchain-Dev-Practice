// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    modifier amount{
       //require(msg.value>1);
       require(block.timestamp<(1706438494 + 50 minutes));
        _;
    }
    function send() public payable amount{

    }
}
/*
(1 wei == 1);
(1 szabo == 1e12); 
(1 finney == 1e15);
(1 ether == 1e18);
(2 ether == 2000 fenny);

*/