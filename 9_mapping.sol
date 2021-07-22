// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0;

contract MappingPractice {
    mapping(int256 => string) names; // int is key and string is value

    function updateValue(int256 a, string memory b) public {
        names[a] = b;
    }

    function getValue(int256 a) public view returns (string memory) {
        return names[a];
    }
}
