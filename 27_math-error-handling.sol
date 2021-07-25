pragma solidity >= 0.8.0;

// Error Handling Options:
// Below are all developer preferences
// require  // Means we are expecting the value but not accepting it  -- input parameters validation  -- Gas Returned
// revert   // Execution unexpected value  -- Gas Returned
// assert   // consume all gas. Use when we are not expecting a value  -- state validation  -- Gas Consumed

contract Math {
    
    function add(uint8 a, uint8 b) public pure returns (uint result) {
        // if(a > 0) result = a + b; else return 0;
        require(a > 0 && b > 0, "Invalid Value: Should be greater than 0.");
        // require(a > 0, "Invalid Value: Should be greater than 0.");
        // require(b > 0, "Invalid Value: Should be greater than 0.");
        // Hacking is done by overflowing. So we can use it for checking and consuming all gas.
        assert(a + b < 255); // within execution we are ensuring that something is not greater. Used for unit testing.
        result =  a + b;
    }
    
    function sub(uint a, uint b) public pure returns (uint result) {
        if(!(a > 0 && b > 0)) {
            revert("Invalid Value: Should be greater than 0.");
        } 
        result =  a + b;
    }
    
}