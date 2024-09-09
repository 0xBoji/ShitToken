// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {SHITToken} from "../src/SHITToken.sol";

contract SHITTokenScript is Script {
    SHITToken public shitTokenInstance;
    uint256 public deployerPrivateKey = vm.envUint("PRIVATE_KEY");

    function run() public {
        vm.startBroadcast(deployerPrivateKey);
        
        uint256 initialSupply = 1000000 * 10 ** 18; // 1 million tokens with 18 decimals
        shitTokenInstance = new SHITToken(initialSupply);
        
        vm.stopBroadcast();
    }
}