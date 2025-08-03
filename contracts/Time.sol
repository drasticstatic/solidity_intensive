// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

/* Time on the blockchain is in seconds, not milliseconds, like JavaScript and other languages
    Unix time is a system for tracking time that counts the number of seconds that have elapsed since the epoch
        Use https://www.unixtimestamp.com/ or https://www.epochconverter.com
            to convert between Unix time and human-readable time

    The `block.timestamp` variable gives the current time in seconds
        `block.timestamp` is not guaranteed to be accurate, but it is generally reliable for
        determining the order of transactions and for time-based conditions in smart contracts*/

contract Time1 {
    address public owner;
    uint public depositStartTime;
    uint public withdrawStartTime;

    modifier onlyOwner {
        require(msg.sender == owner, 'caller must be owner');
        _;
    }

    constructor(uint _depositStartTime, uint _withdrawStartTime) {
        owner = msg.sender;
        depositStartTime = _depositStartTime;
        withdrawStartTime = _withdrawStartTime;
    }

    function deposit() public payable onlyOwner {
        require(block.timestamp >= depositStartTime, 'cannot deposit yet');
        // Contract receives ether...
    }

    modifier afterWithdrawEnabled {
        require(
            block.timestamp >= withdrawStartTime,
            'cannot withdraw yet'
        );
        _;
        // Using a custom modifer vs. a require statementallows us to add more logic in the future if needed
    }

    function withdraw() public onlyOwner afterWithdrawEnabled {
        uint256 value = address(this).balance;
        (bool sent, ) = owner.call{value: value}("");
        require(sent);
    }

}
