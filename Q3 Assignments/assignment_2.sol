// SPDX-License-Identifier: UNLISENCED
pragma solidity >= 0.8.0;

contract BankContract {
    
    uint ownerBalance = msg.value;
    address ownerAddress = msg.sender;
    uint accountCounter = 0;
    struct AccountHolder {
        string name;
        address accountAddress;
        uint accountBalance;
    }
    AccountHolder[] accountHolder;
    event logString(string);
    event logStrAdd(string, address);
    event logInquiry(string, string, string, address, string, uint);
    
    constructor() payable {
        require(ownerBalance >= 50 ether, "For starting a bank Contract Deployer should provide balance more than 50");
        emit logString("Bank Opened Successfully!!");
    }
    
    function closeBank() public {
        require(ownerAddress == msg.sender, "Only Bank Owner can close the bank!");
        selfdestruct(payable(ownerAddress));
        emit logString("Bank Closed Successfully!!");
    }
    
    function createAccount(string memory _name, address currentAddress, uint currentBalance) private {
        require(msg.value >= 1 ether, "For openning an account minimum amount is 1 ether.");
        accountHolder[accountCounter] = AccountHolder(_name, currentAddress, currentBalance);
        if(accountCounter < 5) {
            payable(currentAddress).transfer(1 ether);
        }
        accountCounter++;
        emit logString("Account Created Successfully!!");
    }
    
    function openAccount(string memory _name) public payable {
        if(accountHolder.length != 0) {
            for(uint i = 0; i < accountHolder.length; i++) {
                require(accountHolder[i].accountAddress != msg.sender, "Your account already exist on this account number.");
            }
            createAccount(_name, msg.sender, msg.value);
        } else {
            createAccount(_name, msg.sender, msg.value);
        }
    }
    
    function deposite() payable public {
        require(accountCounter == 0, "Your account does not exist.");
        bool flag = false;
        for(uint i = 0; i < accountHolder.length; i++) {
            address currentAddress = msg.sender;
            if(accountHolder[i].accountAddress == currentAddress) {
                accountHolder[i].accountBalance = accountHolder[i].accountBalance + msg.value;
                flag = true;
                break;
            }
        }
        require(flag == true, "Your account does not exist.");
        emit logStrAdd("Deposite successful on account number ", msg.sender);
    }
    
    function widthdraw() public {
        require(accountCounter == 0, "Your account does not exist.");
        bool flag = false;
        for(uint i = 0; i < accountHolder.length; i++) {
            address currentAddress = msg.sender;
            if(accountHolder[i].accountAddress == currentAddress) {
                require(accountHolder[i].accountBalance >= 1 ether, "Your account balance is less than 1 ether.");
                payable(accountHolder[i].accountAddress).transfer(accountHolder[i].accountBalance);
                flag = true;
                break;
            }
        }
        require(flag == true, "Your account does not exist.");
        emit logStrAdd("Widthdrwal successful on account number ", msg.sender);
    }
    
    function enquireBalance() public {
        require(accountCounter == 0, "Your account does not exist.");
        AccountHolder memory accHold;
        bool flag = false;
        for(uint i = 0; i < accountHolder.length; i++) {
            address currentAddress = msg.sender;
            if(accountHolder[i].accountAddress == currentAddress) {
                accHold.name = accountHolder[i].name;
                accHold.accountAddress = accountHolder[i].accountAddress;
                accHold.accountBalance = accountHolder[i].accountBalance;
                flag = true;
                break;
            }
        }
        require(flag == true, "Your account does not exist.");
        emit logInquiry("Account Details:\n  Name: ", accHold.name, "\n  Account Address: ", accHold.accountAddress, "\n  Account Balance: ", accHold.accountBalance);
        emit logStrAdd("Widthdrwal successful on account number ", msg.sender);
    }
    
}
