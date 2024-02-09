// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    uint public a=5;
    uint public b=7;
    //While
    function get() public{
        while (a<b){
            a+=1;

        }
    }
    //d0-while
    function get1() public{
        do {
            a+=1;
        } 
        while (a<b);
    }
    //For loop
    function get3() public{
        for (a=0; a<=5; a++) 
        { 
            b+=1;
        
        }
    }
    
}