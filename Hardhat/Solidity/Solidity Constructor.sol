// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    address public owner;
    uint public balance;
    constructor(uint bal) {
        owner=msg.sender;
        balance=bal;
    }
}
contract name1 is Name(20) {

    
}