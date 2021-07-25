pragma solidity >= 0.8.0;

contract ErrorHandling {
    
    event logString(string);
    
    modifier checkvalue(uint value) {
        
        // Number of times we use _, the number of time function will bw called

        require(value >= 1 ether, "Amount should be greater than or equal to 1 ether");
        emit logString("modifier call one");
        _;
        require(value >= 1 ether, "Amount should be greater than or equal to 1 ether");
        emit logString("modifier call Two");
        _;
        
    }
    
    function buy() public payable checkvalue(msg.value) {
        emit logString("Buy method call");
    }
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    
}