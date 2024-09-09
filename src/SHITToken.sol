// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title SHITToken
 * @dev This contract implements an ERC20 token named SHIT with the symbol SHIT.
 */
contract SHITToken is ERC20, Ownable {
    constructor(uint256 initSupply) ERC20("SHIT", "SHIT") {
        _mint(msg.sender, initSupply); // mint init supply to the contract deployer
    }

    /**
     * @dev Allows the owner to mint new tokens.
     * @param to The address to which the new tokens will be minted.
     * @param amount The amount of tokens to mint.
     */
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
