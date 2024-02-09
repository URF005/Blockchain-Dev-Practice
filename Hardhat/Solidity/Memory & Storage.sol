// SPDX-License-Identifier: MIT
pragma solidity>=0.7.0;
contract Memory {
    function get(string memory name ) public pure returns (string memory) {
        return name;
    }

    
}
//Some varibles do not by default store in memory so we use memory keyword such as as string