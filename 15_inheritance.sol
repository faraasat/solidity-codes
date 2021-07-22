// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract Human {
    
    uint private age;
    
    function getAge() public view returns(uint) {
        return age;
    }
    
    function setAge (uint _age) public {
        age = _age;
    }
    
}

contract Ahmed is Human {
    function setAhmedBio(uint b) public returns(uint) {
        Human ah = new Human();
        ah.setAge(b);
        return ah.getAge();
    }
}