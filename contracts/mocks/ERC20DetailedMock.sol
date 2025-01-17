pragma solidity ^0.5.2;

import "../token/ERC20/ERC20.sol";
import "../token/ERC20/ERC20Detailed.sol";

contract ERC20DetailedMock is ERC20, ERC20Detailed {
    constructor (string memory name, string memory symbol, uint8 decimals)
        public
    {
        ERC20Detailed.initialize(name, symbol, decimals);
    }
}
