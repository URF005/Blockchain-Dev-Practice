// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    uint public num;
    constructor(uint _num) {
        num=_num;
    }
}
contract Name1 is Name(4) {
    function get() public view returns (uint) {
        return num;
    }
    
}
