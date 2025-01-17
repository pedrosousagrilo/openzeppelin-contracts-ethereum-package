pragma solidity ^0.5.2;

import "../payment/escrow/ConditionalEscrow.sol";

// mock class using ConditionalEscrow
contract ConditionalEscrowMock is ConditionalEscrow {
    mapping(address => bool) private _allowed;

    constructor() public {
        ConditionalEscrow.initialize(_msgSender());
    }

    function setAllowed(address payee, bool allowed) public {
        _allowed[payee] = allowed;
    }

    function withdrawalAllowed(address payee) public view returns (bool) {
        return _allowed[payee];
    }
}
