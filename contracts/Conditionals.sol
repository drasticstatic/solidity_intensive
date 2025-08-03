// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Conditionals1 {
    function evenOrOdd1(uint x) public pure returns (string memory) {
        if (x % 2 == 0) {
            return "even";
        } else {
            return "odd";
        }
    }
//Can also be written as:
    // Note: this is a more concise way to write the same logic
    // It uses the ternary operator, which is a shorthand for if-else statements
    // The syntax is: condition ? value_if_true : value_if_false
    // In this case, if x % 2 == 0 is true, it returns "even", otherwise it returns "odd"
    // This is a common pattern in Solidity and other programming languages
    // It can make your code more readable and concise, especially for simple conditions
    // However, for more complex conditions, it is often better to use if-else statements
    // because they are easier to read and understand
    // Also note that the ternary operator can only return a single value, so it is
    // not suitable for more complex logic that requires multiple statements or actions
    function evenOrOdd2(uint x) public pure returns (string memory) {
        if (x % 2 == 0) {
            return "even";
        }

        return "odd";
    }
//And finally, this is the most concise way to write the same logic
    // It uses the ternary operator to return "even" if x % 2 == 0, and "odd" otherwise
    // ':" is used to separate the two possible return values acting as a shorthand for if-else statements"
    function evenOrOdd3(uint x) public pure returns (string memory) {
        return x % 2 == 0 ? "even" : "odd";
    }

}

// Now,  let's look at a more complex example with nested if-else statements
// This example checks the value of x and returns different values based on its range
// It demonstrates how to use if-else statements to handle multiple conditions
// This is useful when you need to check multiple conditions and return different values based on them
// It also shows how to use if-else statements to handle more complex logic
// else if statements can be used to check multiple conditions in a single function
contract Conditionals2 {

    function checkNumber1(uint x) public pure returns (uint) {
        if (x < 10 ) {
            return 0;
        } else if (x < 100) {
            return 1;
        } else {
            return 2;
        }
    }

// Nested if-else statements can be used to handle more complex logic
    function checkNumber2(uint x) public pure returns (uint) {
        if (x < 10 ) {
            if (x < 5) {
                return 0;
            } else {
                return 1;
            }
        } else if (x < 100) {
            return 2;
        } else {
            return 3;
        }
    }
}

