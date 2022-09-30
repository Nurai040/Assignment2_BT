pragma solidity ^0.8.17;
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract AITU_Nurai is ERC20 {
    address public admin;
    uint public initialSupply = 2000;
    constructor() ERC20('My Token', 'MTN') {
        _mint(msg.sender, initialSupply);
        admin = msg.sender;
    }

    function mint(address to, uint amount) external{
        require(msg.sender == admin, 'only admin');
        _mint(to, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }

}