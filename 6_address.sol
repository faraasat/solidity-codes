// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract AddressGetPractice {
    function getAddress() public view returns (address) {
        return address(this);  // this will get the address of this contract
    }
}
