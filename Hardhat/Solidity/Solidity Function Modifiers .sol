// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    //Functions modifier used to change the behaviour of a function
    //When same error handling or logic is applied repeatdly we use function modifier 
    address public owner;
    constructor() {
        owner=msg.sender;
    }
    modifier onlyowner{
        require(msg.sender==owner);
        _;
    }
    function sendmoney() public onlyowner{
        
    }



    
}