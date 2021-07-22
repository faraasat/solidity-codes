// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0;

contract ConversionPractice {
    function ImplicitPractice() public view returns (int16) {
        int8 a = 30;
        int16 b = a;
        return b;
    }

    function ExplicitPractice() public view returns (uint8) {
        uint16 a = 500;
        uint8 b = uint8(a);
        return b;
    }

    function bytePractice() public view returns (bytes memory) {
        string memory abc = "mudassir";
        bytes memory bConver = bytes(abc);
        return bConver;
    }
}
