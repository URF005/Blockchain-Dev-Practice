// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    address payable public owner;
    constructor() {
        owner=payable (msg.sender);
    }
    function transferether() payable  public{
        owner.transfer(msg.value);

    }
    
}