// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0;

contract NestedMappingPractice {
    mapping(string => mapping(int256 => string)) PiaicCourses;

    function addCourses(
        string memory rollNo,
        int256 keyVal,
        string memory course
    ) public {
        PiaicCourses[rollNo][keyVal] = course;
    }

    function getCourses(string memory rollNo, int256 keyVal)
        public
        view
        returns (string memory)
    {
        return PiaicCourses[rollNo][keyVal];
    }
}
