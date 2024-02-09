// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Operators {
    //Arithmetic operator [+,-,*,/,%]
    uint public value=4;
    function add() public{
        //Aritmetic Operator
        value=value+2;
    }
     function subtract() public{
        //Aritmetic Operator
        value=value-2;
    }
     function reminder() public{
        //Aritmetic Operator
        value=value%2;
    }
    //Relational operator [==,!=,>,<,<=,>=]
     function relation1() public view returns(bool){
        //Relational Operator
        return value==4;
    }
    //Logical Operators [AND,OR,NOT]
      function Logical() public pure returns(bool){
        //Relational Operator
        return 2>1&&3>7;
    }
     function Logical1() public pure returns(bool){
        //Relational Operator
        return !true;
    }

}