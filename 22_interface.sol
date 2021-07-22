pragma solidity ^0.8.0;

interface Ageing {
    function setAge(uint a) external;  // They are already considered virtual
    function getAge() external view returns (uint);
}

contract Human is Ageing {
    uint age;
    event logString(string);
    
    constructor() public {
        emit logString("Human Constructor");
    }
    
    function setAge(uint _age) override virtual public { 
        age = _age;
    }
    
    function getAge() override public view returns (uint) {
        return age;
    }
}

contract Student is Human {
    constructor() {
        emit logString("Student Constructor");
    }
    
    function setAge(uint _age) override public {  
        if(_age < 16) {
            age = _age;
        }
    }
    
    function setAge(uint _age, uint a) public {
        if(_age < 16) {
            age = _age;
        }
    }
}

contract DemoObject {
    
    function doSomethingAgain() public returns (uint) {
        Student s = new Student();
        s.setAge(5);
        return s.getAge();
    }
}