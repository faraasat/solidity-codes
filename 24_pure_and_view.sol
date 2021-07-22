pragma solidity >= 0.8.0;

contract Demo {
    
    // state
    uint public a = 4;
    
    // In pure only call will happen, transaction will not happen
    // view and pure are both calls
    // Only state change are transactions, rest are calls
    
    function doSomething(uint _A) public returns (uint _a) {   
        a = _a;
        return _a;
    }
    
    function getA() view public returns (uint a) {
        return a;
    }
    
}