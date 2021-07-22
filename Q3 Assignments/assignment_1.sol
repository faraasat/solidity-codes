pragma solidity >= 0.8.0;

interface Vehicle {
    function start() external view returns (string memory);
    function accelerate() external view returns (string memory);
    function stop() external view returns (string memory);
    function service() external view returns (string memory);
}

contract ParentVehicle is Vehicle {
    
    function start() public virtual override view returns (string memory) {
        return "The Vehicle has just Started";
    }
    
    function accelerate() public virtual override view returns (string memory) {
        return "The Vehicle has just Accelerated";
    }
    
    function stop() public virtual override view returns (string memory) {
        return "The Vehicle has just Stopped";
    }
    
    function service() public virtual override view returns (string memory) {
        return "The Vehicle has just Serviced";
    }
    
}

contract Car is ParentVehicle {
    
    function start() public virtual override view returns (string memory) {
        return "The Car has just Started";
    }
    
    function accelerate() public virtual override view returns (string memory) {
        return "The Car has just Accelerated";
    }
    
    function stop() public virtual override view returns (string memory) {
        return "The Car has just Stopped";
    }
    
    function service() public virtual override view returns (string memory) {
        return "The Car has just Serviced";
    }
    
}

contract Truck is ParentVehicle {
    
    function start() public virtual override view returns (string memory) {
        return "The Truck has just Started";
    }
    
    function accelerate() public virtual override view returns (string memory) {
        return "The Truck has just Accelerated";
    }
    
    function stop() public virtual override view returns (string memory) {
        return "The Truck has just Stopped";
    }
    
    function service() public virtual override view returns (string memory) {
        return "The Truck has just Serviced";
    }
    
}

contract MotorCycle is ParentVehicle {
    
    function start() public virtual override view returns (string memory) {
        return "The MotorCycle has just Started";
    }
    
    function accelerate() public virtual override view returns (string memory) {
        return "The MotorCycle has just Accelerated";
    }
    
    function stop() public override virtual view returns (string memory) {
        return "The MotorCycle has just Stopped";
    }
    
    function service() public override virtual view returns (string memory) {
        return "The MotorCycle has just Serviced";
    }
    
}

contract AltoMehran is Car {
    
    function start() public override view returns (string memory) {
        return "The AltoMehran has just Started";
    }
    
    function accelerate() public override view returns (string memory) {
        return "The AltoMehran has just Accelerated";
    }
    
    function stop() public override view returns (string memory) {
        return "The AltoMehran has just Stopped";
    }
    
    function service() public override view returns (string memory) {
        return "The AltoMehran has just Serviced";
    }
    
}

contract Hino is Truck {
    
    function start() public override view returns (string memory) {
        return "The Hino has just Started";
    }
    
    function accelerate() public override view returns (string memory) {
        return "The Hino has just Accelerated";
    }
    
    function stop() public override view returns (string memory) {
        return "The Hino has just Stopped";
    }
    
    function service() public override view returns (string memory) {
        return "The Hino has just Serviced";
    }
    
}

contract Yamaha is MotorCycle {
    
    function start() public override view returns (string memory) {
        return "The Yamaha has just Started";
    }
    
    function accelerate() public override view returns (string memory) {
        return "The Yamaha has just Accelerated";
    }
    
    function stop() public override view returns (string memory) {
        return "The Yamaha has just Stopped";
    }
    
    function service() public override view returns (string memory) {
        return "The Yamaha has just Serviced";
    }
    
}
