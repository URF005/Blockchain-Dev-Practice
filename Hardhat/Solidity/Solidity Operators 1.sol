// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
//Bitwise operator [OR,AND,XOR,NOR,NAND,LEFT SHIFT,RIGHT SHIFT]
contract Name {
    uint a=4;
    uint b=5;
    int c =7;
    function get() public view returns(uint){
        return a|b;
    }
    function not() public view returns(int){
        return  ~c;
    }
     function conditional() public view  returns(bool){
        return  (a==b?true:false);
    }

    
}