// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract EventPractice {
    uint256 age;
    event ageRead(uint256, string);

    function updateAge(uint256 _age, string memory data) public {
        age = _age;
        emit ageRead(age, data); // to recall data through function and call it in view (it is a log)
    }
}
