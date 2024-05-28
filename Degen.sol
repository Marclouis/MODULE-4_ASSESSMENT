// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "./ownable.sol";

contract DegenToken is ERC20, Ownable {
    mapping(uint256 => uint256) public object;

    event ItemRedeemed(address indexed player, uint256 indexed itemId, uint256 amount);

    constructor(uint256 initialSupply) ERC20("Degen", "DGN") {
        _mint(msg.sender, initialSupply * 10 ** decimals());
        object[1] = 200; //   1: boots - Price: 200 tokens
        object[2] = 400; //   2: pants - Price: 400 tokens
        object[3] = 1000; //  3: Vest - Price: 1000 tokens
        object[4] = 2000; //  4: Sword - Price: 2000 tokens
    }

    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function setItemPrice(uint256 itemId, uint256 price) external onlyOwner {
        object[itemId] = price;
    }

    function redeemItem(uint256 itemId) external {
        // Ensure item price is set and player has enough balance
        require(object[itemId] > 0, "Item price not set");
        require(balanceOf(msg.sender) >= object[itemId], "Insufficient balance");

        // Transfer tokens from player to owner (in-game store)
       
        _transfer(msg.sender, owner, object[itemId]);
        emit ItemRedeemed(msg.sender, itemId, object[itemId]);
    }
    
    function transferto(address _recipient, uint256 _amount) external returns (bool) {
        require(balanceOf(msg.sender) >= _amount, "Insufficient balance");
        _transfer(msg.sender, _recipient, _amount);
        return true;
    }

}

