// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    uint public number=4;
    function add() public pure returns (uint) {
        uint val=12;
        return val;

    }
    function global() public view returns (uint){
        //To show the current time
        //return block.timestamp;
        //To show the sender address
       // return msg.sender;
       //To show the balance
       return msg.sender.balance;
    }
    
    
}
//State varible store in contract storage
//Local Variable donot store in contract storage used inside functions
//Global Variable are special keywords

