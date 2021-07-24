pragma solidity ^0.8.0;

contract ParentVehicle{
    
    function start() public pure returns (string memory _start){
        _start = "The Vehicle has just Started";
        return _start;
    }

    function accelerate() public pure returns (string memory _accelerate){
        _accelerate = "The Vehicle has just Accelerated";
        return _accelerate;
    }

    function stop() public pure returns (string memory _stop){
        _stop = "The Vehicle has just Stopped";
        return _stop;
    }

    function service() virtual public pure  returns (string memory _service ){
        _service = "The Vehicle is being serviced";
        return _service;
    }

}
    
contract Cars is ParentVehicle{
    function service() override public pure  returns (string memory _service){
        _service = "The Car is being serviced";
        return _service;
    }

}
     
    
contract Truck is ParentVehicle{
    
    function service() override public pure  returns (string memory _service){  
        _service = "The Truck is being serviced";
        return _service;
    }

}
     
contract MotorCycle is ParentVehicle{
    
    function service() override public pure  returns (string memory _service){
        
        _service = "The MotorCycle is being serviced";
        return _service;
    }
}     

contract Alto is Cars {
    
}

contract Hino is Truck{
    
}

contract Yamaha is MotorCycle{
    
}

contract carservice is Cars {
    
    function _carservice(address add) public pure returns (string memory) {
        
       carservice a = carservice(add);
       return a.service();
    }
}

contract Truckservice is Truck {
    
    function _Truckservice(address add) public pure returns (string memory) {
        
       Truckservice a = Truckservice(add);
       return a.service();
    }
}

contract MotorCycleservice is MotorCycle {
    
    function _MotorCycleservice(address add) public pure returns (string memory) {
        
       MotorCycleservice a = MotorCycleservice(add);
       return a.service();
    }

}
    