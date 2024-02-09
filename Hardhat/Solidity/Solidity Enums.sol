// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    enum size{LARGE,MEDIUM,SMALL}
    size public choice=size.MEDIUM;
    function setsmall()  public{
        choice=size.SMALL;

    } 
    function setmedium()public{
        choice=size.MEDIUM;
    }
    function setlarge() public{
       choice=size.LARGE;
    }
    
}