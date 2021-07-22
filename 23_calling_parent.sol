pragma solidity >= 0.8.0;

contract A {
    function getAddress() virtual public returns (address) {
        return address(this);
    }
}

contract B is A {
    function getAddress() virtual override public returns (address) {
        return address(this);
    }
}

contract C is B {
    function getAddress() override public returns (address) {
        return address(this);
    }
    
    function getParentAddress() virtual public returns (address) {
        return super.getAddress();
    }
}

contract call {
    event log(address);
    function doSomething() public {
        C c = new C();
        emit log(address(c));
        emit log(c.getAddress());
        emit log(c.getParentAddress());
    }
}



contract Car {
    function getService() public virtual returns (string memory) {
        return "Car.Service";
    }
}

contract Truck {
    function getService() public virtual returns (string memory) {
        return "Truck.Service";
    }
}

contract TruckCar is Car, Truck {
    function getService() override(Car, Truck) public virtual returns (string memory) {
        super.getService();
        return "TruckCar.Service";
    }
}
