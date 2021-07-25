pragma solidity >= 0.8.0;

// Error is used to light-weight our error because string cost so much byte space

contract ErrorHandling {
    
    // error InvalidValueRequireGreaterThanZero();
    error InvalidValueRequireGreaterThanZero(uint, uint);
        
    function sub(uint a, uint b) public pure returns (uint result) {
        if(a == 0 && b == 0) {
            revert InvalidValueRequireGreaterThanZero(a,b);
        }
        result = a + b;
    }
    
}