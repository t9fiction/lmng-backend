// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LMNGToken is ERC20 {
    constructor() ERC20("LMNG Token", "LMNG") {
        // Mint 1,000,000 tokens to the deployer
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }
}