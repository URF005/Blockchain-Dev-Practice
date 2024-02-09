// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    //Cryptographic Hashing function takes input data and produce the enciphered text of fixed size
    bytes32 public password;
    function genpass(string memory _pass) public{
        password=keccak256(abi.encode(_pass));
    }
    function sendmoney(string memory _pass)public view  {
        require(keccak256(abi.encode(_pass))==password,'password is incorrect');
    }

}
//abi.encode can create colision so we use abi.encode because abi.encode donot concatinate the multiple arguments
