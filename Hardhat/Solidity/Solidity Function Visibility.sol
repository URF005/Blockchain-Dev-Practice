// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
//Function visibility have 4 types
    /*
    Public=Called from all potential paties
    Private=Only be called for the main contract
    Internal=Called from main and derived contract
    External=Only be called from third party
    */
contract Name {
    function add(uint a, uint b) public pure returns (uint) {
        return a+b;
    }

}
contract Name1 is Name {
    function call() public pure returns(uint){
        return add(2,5);

    }
    
}