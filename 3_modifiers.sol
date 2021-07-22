// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract ModifierPractice {
    modifier verifyAge(uint256 a) {
        if (a > 18) {
            _; // means if condition is true then _ will run the function it save us from using if else again and again
        }
    }

    function getModifier(uint256 _age)
        public
        view
        verifyAge(_age)
        returns (uint256)
    {
        return _age;
    }
}
