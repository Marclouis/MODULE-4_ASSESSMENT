# DegenToken

DegenToken is an ERC20 token contract that enables the creation of a decentralized token economy with additional features for managing in-game items.

## Overview

DegenToken is deployed on the Ethereum blockchain and provides functionalities for minting, burning, and redeeming in-game items using tokens.

### Features

- **ERC20 Compatibility**: DegenToken is compatible with the ERC20 standard, allowing seamless integration with ERC20-compatible wallets and platforms.
- **Minting and Burning**: The contract owner can mint new tokens and burn existing tokens as necessary.
- **In-Game Items**: Users can redeem in-game items by spending tokens, with each item having a specific token price.

## Getting Started

### Deployment

The contract is deployed on the Ethereum mainnet or testnets.

## Contract Details

- **Name**: DegenToken (DGN)
- **Decimals**: 18
- **Initial Supply**: Defined during contract deployment

### Functions

- `redeemItem(uint256 itemId)`: Allows users to redeem in-game items by providing the item ID.
- `mint(address account, uint256 amount)`: Enables the contract owner to mint new tokens and assign them to the specified account.
- `burn(uint256 amount)`: Allows users to burn their tokens.
- `transferto(address _recipient, uint256 _amount)`: Allows users to transfer tokens to another address.
- `balanceOf(address account) public view virtual returns (uint256)` function is a public view function defined within the DegenToken contract. It returns the token balance of a specified Ethereum address.

## Overview
The Ownable contract provides basic functionality for ownership management in Solidity contracts. It allows for the transfer of ownership from one address to another.

## Features
- **Ownership Management**: The contract tracks the current owner's address and allows for the transfer of ownership to a new address.
- **Modifier**: The `onlyOwner` modifier ensures that only the current owner can execute certain functions within the contract.
