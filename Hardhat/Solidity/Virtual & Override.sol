// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    function val() public pure virtual  returns (uint) {
        return 6;
    }  
}
 contract Name1 is Name {
    function val() public pure override returns (uint) {
        return 10;
    }
        
}
//When you want to chnage the behavour of function r rewrite the function with same name use virtual and override
