// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

/* Mappings are like a database, where you can store and retrieve values based on keys
    They are useful for storing data that can be accessed by a unique identifier, such as an address or an ID
    Mappings are not iterable, meaning you cannot loop through them like arrays
    You can only access values by their keys, which makes them efficient for lookups
    Mappings are also used to store data in a way that is easy to access and modify
    They are similar to dictionaries in Python or hashmaps in Java
    Mappings are a powerful feature of Solidity that allows you to create complex data structures
    They are used in many smart contracts to store and manage data efficiently
    Mappings can be used to store any type of data, including structs and arrays
    They are a key-value store, where the key is a unique identifier and the value is the data associated with that key

    Mapping examples (key value pairs)
        Ex: key: firstname, value: "Bugs"; key: lastname, value: "Bunny"; location: "Earth"
        Ex: key/ID1: K1, value: AAA,BBB,CCC;
            key/ID2: K2, value: AAA,BBB,CCC;
            key/ID3: K3, value: AAA,DDD;
            key/ID4: K4, value: AAA,2,01/01/2015;
            key/ID5: K5, value: 3,ZZZ,5623
        Ex: key: 1, value: "Adam"; key: 2, value: "Ben";*/


contract Mappings1 {
    mapping(uint => string) public names; // Mapping of string like a databse
    mapping(uint => address) public addresses; // Mapping of string like a databse
    mapping(address => uint) public balances; // Mapping of string like a databse
    mapping(address => bool) public hasVoted; // Tracks whether a user has voted

    // Public mappings can be accessed by anyone, but only the contract owner can modify them
    // Note: mappings are not iterable, so you cannot loop through them like arrays
    // You can only access values by their keys, which makes them efficient for lookups

    // Add values to the mapping in the constructor
    constructor() {
        names[1] = "Adam";
        names[2] = "Ben";

        addresses[1] = 0x3EcEf08D0e2DaD803847E052249bb4F8bFf2D5bB;
        addresses[2] = 0xe5c430b2Dd2150a20f25C7fEde9981f767A48A3c;

        balances[0x3EcEf08D0e2DaD803847E052249bb4F8bFf2D5bB] = 1 ether;
        balances[0xe5c430b2Dd2150a20f25C7fEde9981f767A48A3c] = 2 ether;
        // OR: balances[addresses[1]] = 1 ether;
        // Ex: This can be used to check if a user has a positive balance:
            // require(balances[0x0...] > 0, "You have no balance");

        hasVoted[0x3EcEf08D0e2DaD803847E052249bb4F8bFf2D5bB] = true;
        hasVoted[0xe5c430b2Dd2150a20f25C7fEde9981f767A48A3c] = true;
        // Ex: This can be used to check if a user has already voted:
        // require(hasVoted[msg.sender] == false, "You have already voted");
    }
}

contract Mappings2 {

    // Mapping of structs
    struct Book {
        string author;
        string title;
    }

    mapping(uint => Book) public books;

    // Nested mapping
    // Track token balnces for a given account other than ETH
    // E.G. Dai: 0x6B175474E89094C44Da98b954EedeAC495271d0F
    // E.G. WETH: 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2
    mapping(address => mapping(address => uint)) public balances;

    constructor() {
        books[1] = Book("A Tale of Two Cities", "Charles Dickens");
        books[2] = Book("Les Miserables", "Victor Hugo");
        books[3] = Book("1984", "George Orwell");

        address user1 = 0x3EcEf08D0e2DaD803847E052249bb4F8bFf2D5bB;
        address user2 = 0xe5c430b2Dd2150a20f25C7fEde9981f767A48A3c;
        address dai = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
        address weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

        // Nested mappings allows us to track balances for different tokens by passing in the mapped addresses
        // User 1 dai balance:
        balances[user1][dai] = 1 ether;
        // User 2 weth balance:
        balances[user2][weth] = 2 ether;
    }

}

// Getting and setting values
contract Mappings3 {
    mapping(uint => string) public myMapping;

    function get(uint _id) public view returns (string memory) {
        return myMapping[_id];
    }

    function set(uint _id, string memory _value) public {
        myMapping[_id] = _value;
    }

    function remove(uint _id) public {
        // Resets the value to the default value.
        delete myMapping[_id];
    }
}

// Getting and setting nested values
contract Mappings4 {
    mapping(address => mapping(uint => bool)) public myMapping;

    function get(address _user, uint _id) public view returns (bool) {
        return myMapping[_user][_id];
    }

    function set(address _user, uint _id, bool _value) public {
       myMapping[_user][_id] = _value;
    }

    function remove(address _user, uint _id) public {
        // Resets the value to the default value.
        delete myMapping[_user][_id];
    }
}
