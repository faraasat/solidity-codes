pragma solidity >= 0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol"; // To tackle overflow and underflow
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol"; // To set Owner and transfer Ownership
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol"; 
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/Pausable.sol";  // To pause a function

contract myDemoToken is ERC20, Ownable, ERC20Burnable, Pausable {
    using SafeMath for uint;
    uint public cap;    
    
    constructor() ERC20("MyDemoToken", "MDT") public {
        uint initialSupply = 10000 * (10 ** decimals());
        cap = initialSupply.mul(2);
        _mint(msg.sender, initialSupply);
    }
    
    function generateTokens(address account, uint amount) public whenNotPaused onlyOwner {
        require(account != address(0), "Invalid Address");
        require(amount > 0, "Invalid Amount");
        require(totalSupply().add(amount) < cap, "Overlimit Token: Token Generation Failed");
        _mint(account, amount);
    }
    
    function stopTransaction() public whenNotPaused onlyOwner {
        _pause();
    }
    
    function startTransaction() public whenPaused onlyOwner {
        _unpause();
    }
    
}
