// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
abstract contract Name {
    uint public num=5;
    function val() public pure virtual returns(uint);
}
contract Name1 is Name {
    function val() public pure override returns (uint) {
        return 7;
    }
    
}
//In abstract class ther must be atleast one abstarct function without implementation