pragma solidity >= 0.8.0;

// Address low level methods
// address.calldata
// address.delegateCall
// address.staticCall

contract Calculator {
    
    function add(address math, uint a, uint b) public returns (bool success, bytes memory result) {
        bytes memory method = abi.encodeWithSignature("add(uint256,uint256)", a, b);  // Convert to binary and return hash (encode and signature with keccak)
        (success, result) = math.call(method);  // to call a function of another contract whose address is given. In this we are giving low level byte code to execute. It matches the signature given in method variable with the signature of method in deplyed contract and run that instructions.
    }
    
}