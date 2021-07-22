// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;


contract NewSol1 {
  
  function receivePay() public payable{
      
  }
  
  function checkBalance() public view returns(uint) {
      return address(this).balance;
  }
  
  function removeContract() public payable {
        address payable addr =  payable(address(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2));
        selfdestruct(addr);
    }
  
}

// contract NewSol {
//     function removeContract() public payable {
//         address payable addr =  payable(address());
//         selfdestruct(addr);
//     }
// }

