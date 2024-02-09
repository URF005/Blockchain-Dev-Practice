// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    event transfer(
        address indexed  _from,
        address _to,
        uint _amount
    );
    function trans(address to,uint amount)public {
        emit transfer(msg.sender,to, amount);
        
    }



}