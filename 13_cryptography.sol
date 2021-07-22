// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0;

contract CryptographyPractice {
    function sha256Converter() public view returns (bytes32) {
        return sha256("this is our solidity class");
    }

    function keccak256Converter() public view returns (bytes32) {
        return keccak256("this is our solidity class");
    }
}
