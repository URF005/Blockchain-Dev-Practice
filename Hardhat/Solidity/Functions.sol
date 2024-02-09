// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Functions {
    uint8 public  number=12;
    function add()public view  returns (uint8) {
        return number;
    }
}
//Pure keyword says I have no concern with state variable
//Veiw keyword used to get state variable values
//When you want to change state variable just use public


