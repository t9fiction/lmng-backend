// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {LMNGToken} from "../src/LMNGToken.sol";

contract DeployLMNGToken is Script {

    function run() external returns(LMNGToken) {
        vm.startBroadcast();

        // Deploy the LMNG Token
        LMNGToken token = new LMNGToken();

        vm.stopBroadcast();
        return token;
    }
}