pragma solidity >=0.8.0 <0.9.0;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Balloons is ERC20 {
    event Approve(
        address indexed owner,
        address indexed spender,
        uint256 indexed amount
    );

    constructor() ERC20("Balloons", "BAL") {
        _mint(msg.sender, 1000 ether); // mints 1000 balloons!
    }

    function approve(address spender, uint256 amount)
        public
        override
        returns (bool)
    {
        super.approve(spender, amount);
        emit Approve(msg.sender, spender, amount);
        return true;
    }
}
