// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0;

contract structArrayPractice {
    struct Human {
        string name;
        uint age;
    }
    
    function checkArray() public {
        Human[2] memory human1 = [Human("abc", 20), Human("def", 22)];
    }
}
