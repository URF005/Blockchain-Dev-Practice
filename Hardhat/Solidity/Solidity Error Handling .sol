// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    //The require keyword is used in Solidity to ensure that certain conditions are met before proceeding with the execution of a function.If the condition specified in the require statement is true, the function will continue to execute.Require is used to handle the errors on user input
    address public owner;
    uint public count;
    constructor() {
        owner=msg.sender;
    }
    function call() public {
        count++;
        //Require give us back our gas fee
        //require(owner==msg.sender,'caller is not owner');
        //Both assert and require have same functionality but Assert dont give us back our gas fee also assert is used for handling contract internal error
       // assert(owner==msg.sender);


       //revert is a function in Solidity that is used to revert the entire transaction and undo all changes made so far
       //When we forcefully wants to revert any thing
       if(owner!=msg.sender){
        revert("Caller is not owner");
       }


    }
    
}