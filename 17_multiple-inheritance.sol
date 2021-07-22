// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract Sum {
    
    uint public a;
    uint public b;
    
    function SumAdd(uint _a, uint _b) public returns(uint) {
        a = _a;
        b = _b;
        return _a + _b;
    }
    
}

contract Multiply is Sum {
    function MultiSum(uint _a, uint _b) public returns(uint) {
        a = _a;
        b = _b;
        return _a * _b;
    }
}

contract Divide is Sum {
    function DiviSum(uint _a, uint _b) public returns(uint) {
        a = _a;
        b = _b;
        return _a / _b;
    }
}

contract Sub is Sum, Multiply, Divide {
    function SubSum(uint _a, uint _b) public returns(uint) {
        a = _a;
        b = _b;
        return _a - _b;
    }
}
