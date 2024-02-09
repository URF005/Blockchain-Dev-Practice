// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
//Interface dont have any function with implementation
//By default virtual
interface base {
    function val() external returns(uint) ;
    
}
contract Name is base  {
    function val() public pure override returns(uint) {
        return 2;
    }
    
    
}