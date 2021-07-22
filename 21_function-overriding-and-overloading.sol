pragma solidity ^0.8.0;

contract Human {
    uint age;
    event logString(string);
    
    constructor() public {
        emit logString("Human Constructor");
    }
    
    function setAge(uint _age) virtual public {  // virtual is used to allow to override
        age = _age;
    }
    
    function getAge() public view returns (uint) {  // It is not overridable because virtual is not used
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
    
    function setAge(uint _age, uint a) public {  // overloading
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

