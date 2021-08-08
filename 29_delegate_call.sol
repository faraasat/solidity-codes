pragma solidity >= 0.8.0;

contract Math {
    uint public result;
    
    function add(uint a, uint b) external returns(uint) {
        result = a + b;
        return result;
    }
}

contract Calculator {
    uint public result;
    
    // This is a normal call
    function addCall(address math, uint a, uint b) external returns(bool success, bytes memory data) {
        bytes memory method = abi.encodeWithSignature("add(uint256,uint256)",a,b);
        (success, data) = math.call(method);
    }
    
    // If we want to use only function of other contract not storage than we will use delegate call
    // Otherwise the value of function called of a contract will also change
    function deleGateCall(address math, uint a, uint b) external returns(bool success, bytes memory data) {
        bytes memory method = abi.encodeWithSignature("add(uint256,uint256)",a,b);
        (success, data) = math.delegatecall(method);
    } 
}