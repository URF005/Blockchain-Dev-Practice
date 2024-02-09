// SPDX-License-Identifier: MIT
pragma solidity >0.7.0;
contract Name {
    uint public a=7;
    uint public b=6;
    function get()public view returns (uint){
        if(a==4){
            return 1;
        }
        else if(a>4){
            return 2;
        }
        else{
            return 3;
        }

    }

    
}