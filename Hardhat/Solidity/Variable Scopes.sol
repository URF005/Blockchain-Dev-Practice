// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Scope {
    uint public val=4;
    uint public val2=6;
    uint internal val3=6;
    function get()public view returns(uint) {
        return val;
    } 
}
 /*contract Scope2 is Scope {
    function get2()public view  returns(uint) {
        return val3+5;
    }*/

//Without drieving
 contract Scope2{
    Scope s=new Scope();
    function get2()public view  returns(uint) {
        return s.val2();
    }        
}
//Public state variable can be accessed internally asa well as via messages automaticallly a getter function is generated
//Internal state variable can be accessed only internally from the current contract or the contract drieving from it
//Private state variable just accessed inside current contract