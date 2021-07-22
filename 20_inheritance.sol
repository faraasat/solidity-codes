pragma solidity ^0.8.0;

contract Human {
    uint age;
    event logString(string);
    
    // Constructor and constructor's internal function do not go in byte
    constructor() public {
        emit logString("Human Constructor");
    }
    
    // constructor(uint a) public {
    //     emit logString("Human Constructor");
    // }
    
    function setAge(uint _age) public {
        age = _age;
    }
    
    function getAge() public view returns (uint) {
        return age;
    }
}

contract Student is Human {  // if Human constructor do not have any parameter to pass
    constructor() {  // by default it will be like constructor() Human() {
        emit logString("Student Constructor");
    }
}

// contract Student is Human(2) {  // if constructor require a value - 1st method - we can only pass default value here not a variable
//     constructor() {
//         emit logString("Student Constructor");
//     }
// }

// contract Student is Human {  // if constructor require a value - 2nd method
//     constructor() Human(a) {
//         emit logString("Student Constructor");
//     }
// }

// contract Student is Human {
//     constructor(uint a) Human(a) {  // parameterized
//         emit logString("Student Constructor");
//     }
// }

contract Teacher is Human {
    constructor() {
        emit logString("Teacher Constructor");
    }
}

contract StudentAndTeacher is Student, Teacher {  // If we write Student, Teacher, Human Diamond Problem will occur
    constructor() {
        emit logString("StudentAndTeacher Constructor");
    }
}

contract DemoObject {
    // function doSomething() public returns (uint) {
    //     Student s = new Student(5);
    //     s.setAge(5);
    //     return s.getAge();
    // }
    
    function doSomethingAgain() public returns (uint) {
        StudentAndTeacher s = new StudentAndTeacher();
        s.setAge(5);
        return s.getAge();
    }
}