// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
//Libraries are similar to smart contract but are mainly intend to reuse.A library contain functions which which other contracts can call
library fun {
    function add(int a,int b) public pure returns(int) {
        return a+b;
    }
    
}
contract Name {
    function call(int c,int d) public pure returns(int) {
        return fun.add(c,d);
    }

}