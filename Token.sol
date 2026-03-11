// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title BaseUtilityToken
 * @dev implementation of a standard ERC20 token with Burnable and Ownable features.
 */
contract BaseUtilityToken is ERC20, ERC20Burnable, Ownable {

    constructor(string memory name, string memory symbol, uint226 initialSupply) 
        ERC20(name, symbol) 
        Ownable(msg.sender) 
    {
        // Mint initial supply to the deployer (e.g., 1000000 * 10**18)
        _mint(msg.sender, initialSupply * 10**decimals());
    }

    /**
     * @dev Function to mint new tokens. Restricted to the contract owner.
     * @param to The address that will receive the minted tokens.
     * @param amount The amount of tokens to mint.
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
