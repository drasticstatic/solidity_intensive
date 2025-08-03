// ========== ARRAYS.SOL ==========

/* This contract example covers the following:
    -
*/

// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

// Array initalization
// Homework: try more data types!
contract Arrays1 {
    uint[] public array1 = [1, 2, 3]; // Array of uints initialized with values 1, 2, and 3
    uint[] public array2; // this initializes an array of uints
    uint[10] public array3; // this initializes a fixed size array of 10 uints, default to 0; ie: [0,0,0,0,0,0,0,0,0,0]
    string[] public array4  = ["apple", "banana", "carrot"];
    string[] public array5; // this initializes an array of strings
    string[10] public array6; // this initializes a fixed size array of 10 uints, default to ""; ie: ["", "", "", "", "", "", "", "", "", ""]
}


// Array functions
// Homework: try manipulating more arrays & data types
contract Arrays2 {
    uint[] public array;

    // Get value at a given index
    function get(uint i) public view returns (uint) {
        return array[i];
    }
    //i is the index of the array, starting from 0

    // Return the whole array from state variable
    // Note: this returns a copy of the array, not the original array
    // This is because Solidity does not allow returning dynamic arrays directly
    // If you want to return the original array, you need to use a memory array
    function getArray() public view returns (uint[] memory) {
        return array;
    }

    function length() public view returns (uint) {
        return array.length; // returns the length of the array
    }

    // Adds new value at the end of the array
    function push(uint i) public {
        array.push(i);
    }

    // Removes last item from array
    function pop() public {
        array.pop();
    }
    // Homework: try removing the last item from array4 in Arrays1
    // Note: this removes the last item from the array, not a specific item
    // myArray = [apple, banana, carrot]
    // value = myArray.pop() ... which will remove
    // value == "carrot" ... so:
    // myArray = ['apple', 'banana']

    // Remove item at given index
    function remove(uint index) public {
        delete array[index];
    }
}
