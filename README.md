# DegenToken

## Overview
DegenToken is an ERC20 token contract that extends the functionality of the OpenZeppelin ERC20 contract. It allows for the creation of a token named "Degen" with the symbol "DGN". Additionally, it includes functionalities for minting, burning, and redeeming in-game items using the token.

## Features
- Minting: The contract owner can mint new Degen tokens.
- Burning: Users can burn their Degen tokens to reduce the token supply.
- Item Redemption: Users can redeem in-game items by spending their Degen tokens. Each item has a specific price denominated in Degen tokens.

## Contract Details
- **Contract Address**: [Contract Address]
- **Token Name**: Degen
- **Token Symbol**: DGN

## Usage
### Prerequisites
- Solidity Compiler version ^0.8.0
- OpenZeppelin Contracts v4.0.0 or later

### Deployment
1. Deploy the contract to a compatible Ethereum network.
2. Set the initial supply of Degen tokens during deployment.

### Interacting with the Contract
- Minting: Use the `mint` function to mint new Degen tokens. Only the contract owner can call this function.
- Burning: Use the `burn` function to burn Degen tokens. Tokens will be removed from the caller's balance.
- Setting Item Prices: Use the `setItemPrice` function to set the price of in-game items denominated in Degen tokens. Only the contract owner can call this function.
- Redeeming Items: Use the `redeemItem` function to redeem in-game items by spending Degen tokens. Ensure that you have enough tokens and that the item price is set before calling this function.

# Ownable Contract

## Overview
The Ownable contract provides basic functionality for ownership management in Solidity contracts. It allows for the transfer of ownership from one address to another.

## Features
- **Ownership Management**: The contract tracks the current owner's address and allows for the transfer of ownership to a new address.
- **Modifier**: The `onlyOwner` modifier ensures that only the current owner can execute certain functions within the contract.
