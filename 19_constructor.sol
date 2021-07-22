pragma solidity ^0.8.0;

contract Human {
    uint age;
    
    constructor() public {  // There can only be one in solidiy. It cannot be privat. It can be public or internal(abstract)
        age = 2;
    }
    
    // constructor(uint a) public {
    //     age = a;
    // }
    
    function setAge(uint _age) public {
        age = _age;
    }
    
    function getAge() public view returns (uint) {
        return age;
    }
}

contract DemoObject {
    function doSomething() public returns (uint) {
        Human h = new Human(); 
        // default constructor. Automatically made by solidiy. If we deploy DemoObject, Human will be deployed only when we call the function do something
        h.setAge(21);
        return h.getAge();  // here 2 will come
    }
    
    // function doSomethingAgain() public returns (uint) {
    //     Human h = new Human(2);
    //     return h.getAge();
    // }
}