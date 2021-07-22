// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0;

// There are two types of arrays fixed and dynamic
// In these array max size is 256-bits or 32-byte
contract arrayPractice {
    int256[3] arr1 = [2, 44]; // Fixed Array, in fixed if we give value or call greater than length value it will give compile time error

    int256[] arr2 = [1, 12, 34, 56]; // Dynamic Array, in dynamic if we call value greater than length it will give runtime error

    function checkFixedArray() public view returns (int256) {
        return arr1[1];
    }

    function checkDynamicArray() public returns (int256) {
        arr2.push(101);
        return arr2[4];
    }
}
