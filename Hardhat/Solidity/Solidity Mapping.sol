// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    mapping(address=>uint) public balance;
    function setbalance(uint bal)public{
        balance[msg.sender]=bal;

    }

}