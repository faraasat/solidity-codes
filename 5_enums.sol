// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract EnumPractice {
    enum Gender {male, female}

    function genderGet() public view returns (Gender) {
        Gender g = Gender.female;
        return g;
    }

    function genderUserGet(Gender g) public view returns (Gender) {
        Gender userGender = g;
        return userGender;
    }
}
