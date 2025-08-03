// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

// https://docs.soliditylang.org/en/v0.8.16/contracts.html?highlight=inheritance#inheritance

contract SecretVault {
    string private secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function setSecret(string memory _secret) external {
        secret = _secret;
    }

    function getSecret() external view returns(string memory) {
        return secret;
    }
}

// Interact with contract in-view (above):
// Store to variable and call directly
// This is useful when you have the contract instance available at deployment time
// Note: This is a common pattern for interacting with contracts that you control or have deployed
// This allows you to call functions on the contract directly without needing to import an interface
contract Interactions1 {
    SecretVault public secretVault;

    constructor(SecretVault _secretVault) {
        secretVault = _secretVault;
    }

    function setSecret(string memory _secret) public {
        secretVault.setSecret(_secret);
    }

    function getSecret() public view returns(string memory) {
        return secretVault.getSecret();
    }
}

// Interact with contract in-line (below) via importing interface:
// Note: This is a more flexible way to interact with contracts, especially if you don't have
// the contract instance available at deployment time or if you want to interact with multiple contracts
// Import the interface of the contract you want to interact with
// This allows you to call functions on the contract without needing the full contract code
import "./Token.sol";

interface IERC20 {
    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    )
        external
        returns (bool success); //{} No function body needed, just the arguments, modifiers and return type
}

// Instantiate in-line:
contract Interactions2 {

    function deposit(address _tokenAddress, uint _amount) public {
        IERC20(_tokenAddress).transferFrom(msg.sender, address(this), _amount);
    }
}
