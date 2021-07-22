// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0;

contract TransactionPractice {
    
    function PaymentInput() public payable {  // with payable we can send ether to this account
        
    }
    
    function checkBalance() public view returns(uint) {
        return address(this).balance;
    }
    
}
