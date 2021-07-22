// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract StructPractice {
    struct Student {
        string name;
        uint8 age;
        bool isFeePaid;
    }

    function manageStudent() public view returns (string memory) {
        // view is used to view the value on screen
        Student memory roll1 = Student("abc", 18, true); // memory is used to data on memory level(memory is a storage level)
        roll1.name = "cba";
        return roll1.name;
    }
}
