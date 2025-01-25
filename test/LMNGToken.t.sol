// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/LMNGToken.sol";

contract LMNGTokenTest is Test {
    LMNGToken lmngToken;

    function setUp() public {
        // Deploy the LMNG Token
        lmngToken = new LMNGToken();
    }

    function testNameAndSymbol() public view {
        assertEq(lmngToken.name(), "LMNG Token");
        assertEq(lmngToken.symbol(), "LMNG");
    }

    function testInitialSupply() public view {
        assertEq(lmngToken.totalSupply(), 1_000_000 * 10 ** lmngToken.decimals());
    }

    function testMinting() public {
        address recipient = address(0x123);
        vm.prank(address(this));
        lmngToken.transfer(recipient, 100 * 10 ** lmngToken.decimals());

        assertEq(lmngToken.balanceOf(recipient), 100 * 10 ** lmngToken.decimals());
    }
}
