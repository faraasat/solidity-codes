// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract Variables {
    int age = 20;
    int age2 = 22;
    int constant age3 = 25;
    int public age4 = 25;
    int private age5 = 25; // it cannot be called inside child
    int internal age6 = 25; // default and it can be called inside child
    
    // View is used to display
    function getAge() public view returns(int) {
        return age;
    }
    
    function updateAge() public returns(int) {
        age2 = 40;
        return age2;
    }
}