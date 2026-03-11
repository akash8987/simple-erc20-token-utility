# Simple ERC-20 Token Utility

This repository provides a clean, professional, and secure implementation of a standard ERC-20 token on the Ethereum blockchain. It leverages the industry-standard OpenZeppelin libraries to ensure security and compatibility with all major exchanges and wallets.

## Features
- **Standard ERC-20 Compliance:** Fully compatible with MetaMask, Uniswap, and Etherscan.
- **Ownable:** Administrative functions restricted to the contract owner.
- **Mintable:** Allows the owner to create new tokens (can be disabled by renouncing ownership).
- **Burnable:** Users can securely destroy their own tokens to reduce total supply.

## Quick Start
1. Copy the `Token.sol` code.
2. Paste into [Remix IDE](https://remix.ethereum.org/).
3. Compile using Solidity 0.8.20.
4. Deploy to your preferred network (Goerli, Sepolia, or Mainnet).

## License
MIT
