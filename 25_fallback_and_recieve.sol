pragma solidity >= 0.8.0;

contract Fallback {
    // If we send ether to non-payable contract then ether will be stuck and cannot be retrieved
    // Here we are working on controlled environment in remix, so it will give error, but if we try to transfer through metamask above problem will happen
    // To save us from this we use fallback function
    // We can use only one fallback per contract
    // By using this we can return ether to owner or transfer it to another address
    // It do not take parameter or do not return a thing, but it new version it can take and return
    // It is executed either when 
    // 1) a function that does not exist is called or
    // 2) Ether is sent directly to a contract but recieve() does not exist or msg.data is not empty
    // Fallback has a 2300 gas limit when called by transfer or send
    
    event Log(string);
    event LogInt(uint);
    address public owner;
    
    // Their is another like fallback, recieve()
    // Fallback can only recieve data
    
    constructor() {
        owner = msg.sender;  // deployer is owner
    }
    
    fallback() external payable {
        emit LogInt(msg.value);
        // payable(owner).transfer(msg.value);
        emit Log("Fallack Call");
    }
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    
}

contract CallFallback {
    function doSomething(address payable _to) public payable {
        _to.transfer(msg.value);
    }
}