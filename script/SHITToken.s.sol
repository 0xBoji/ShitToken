// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {SHITToken} from "../src/SHITToken.sol";

contract SHITTokenScript is Script {
    SHITToken public shitTokenInstance; // Instance of the SHITToken contract
    uint256 public deployerPrivateKey = vm.envUint("PRIVATE_KEY"); // Private key for deployment

    function run() public {
        vm.startBroadcast(deployerPrivateKey);
        
        // No need to pass initialSupply since the constructor does not accept parameters
        shitTokenInstance = new SHITToken(); // Deploy the SHITToken contract
        
        vm.stopBroadcast();
    }
}
