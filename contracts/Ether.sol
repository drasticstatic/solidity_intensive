// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

// https://eth-converter.com/
// Ether is the native cryptocurrency of the Ethereum blockchain
// 1 Ether = 1,000,000,000,000,000,000 wei (10^18)
// 1 Ether = 1,000,000,000 Gwei (10^9)
// 1 Gwei = 1,000,000,000 wei (10^9)
// Gwei is often used for gas prices in transactions
// Wei is often used to express small amounts of Ether, such as in smart contracts
contract Ether1 {
    uint public value1 = 1 wei;
    uint public value2 = 1;
    // note values 1 & 2 are equivalent

    uint public value3 = 1 gwei;
    uint public value4 = 1000000000;
    uint public value5 = 1e9; // scientific notation for 1 gwei
    // note values 3, 4 & 5 are equivalent

    uint public value6 = 1 ether;
    uint public value7 = 1000000000000000000;
    uint public value8 = 1e18; // scientific notation for 1 ether
    // note values 6, 7 & 8 are equivalent

    /* Other denominations of Ether:
    uint public value9 = 1 finney; // finney is also known as milliether
    // 1 finney = 0.001 ether
    uint public value10 = 1000000000000000;
    uint public value11 = 1e15;
    // note values 9, 10 & 11 are equivalent

    uint public value12 = 1 szabo; // szabo is also known as microether
    // 1 szabo = 0.000001 ether
    uint public value13 = 1000000000000;
    uint public value14 = 1e12;
    // note values 12, 13 & 14 are equivalent

    uint public value15 = 1 kwei; // kwei is also known as femtoether
    // 1 kwei = 0.000000000000001 ether
    uint public value16 = 1000;
    uint public value17 = 1e3;
    // note values 15, 16 & 17 are equivalent

    uint public value18 = 1 mwei; // mwei is also known as microether
    // 1 mwei = 0.000001 ether
    uint public value19 = 1000000;
    uint public value20 = 1e6;
    // note values 18, 19 & 20 are equivalent*/
}

contract Ether2 {
    // Allows contract to receive Ether
    // msg.data must be empty
    receive() external payable {}
}
// Note how we cannot pass in data into the receive() function, but we can in the fallback function

// The fallback function is called when:
    // 1. The contract receives Ether and no receive() function is defined
    // 2. The contract receives data that does not match any function signature
    // 3. The contract does not have a receive() function
// The fallback function is also called when the contract is called with no data
// The fallback function can be used to execute business logic or to log events
// The fallback function must be declared as external and can be payable
// The fallback function cannot have arguments or return values

contract Ether3 {
    uint public count = 0;

    // Also allows contract to receive Ether
    // msg.data is not empty
    // called as "fallback" if receive() not implemented
    fallback() external payable {
        count ++;
    }

    // Shows how to get Ether blance of current contract, .i.e., "this"
    function checkBalance() public view returns (uint) {
        return address(this).balance;
    }
}


// Transferring Ether
contract Ether4 {

    function transfer1(address payable _to) public payable {
        // Don't do it this way...
        _to.transfer(msg.value);
    }

    function transfer2(address payable _to) public payable {
        // Use #call() instead!
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}

// Payable
contract Ether5 {
    uint public balance;

    function deposit1() public {
        // Not payable, will fail if trying to send ether...
        // balance += msg.value;
    }

    function deposit2() public payable {
        balance += msg.value;
    }
}
