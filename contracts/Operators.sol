// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

// Basic Math
// Homework: try implementing some math inside function calls
contract Operators1 {
    function add(uint a, uint b) external pure returns(uint) {
        return a + b;
    }

    function sub(uint a, uint b) external pure returns(uint) {
        return a - b;
    }

    function mul(uint a, uint b) external pure returns(uint) {
        return a * b;
    }

    function div(uint a, uint b) external pure returns(uint) {
        return a / b;
    }

    function exp(uint a, uint b) external pure returns(uint) {
        return a ** b;
    }

    /* Modulo (modulus)
            Ex: 5 % 2 = 1
                5 / 2 = 2 remainder 1
        Note: this is not the same as division, which returns a quotient
            Ex: 5 / 2 = 2 (integer division)

        Using modulo to check if a number is even or odd:
            Ex: 5 % 2 == 1 (odd), 6 % 2 == 0 (even)
                5 modulus 2 is 1, because 5 divided by 2 is 2 with a remainder of 1
                6 modulus 2 is 0, because 6 divided by 2 is 3 with a remainder of 0

        Note: modulo is not the same as remainder, which is a concept in some programming languages
            Ex: in Python, 5 % 2 == 1, but -5 % -2 == -1
                in Solidity, 5 % -2 == 1, and -5 % -2 == -1
            Be careful with negative numbers
                Also note that Solidity does not support floating point numbers, so you cannot use modulo with non-integer numbers
                Ex: 5.5 % 2.2 will not work
                You can only use modulo with integers*/
    function mod(uint a, uint b) external pure returns(uint) {
        return a % b;
    }

    function increment(uint a) external pure returns(uint) {
        a++;
        return a;
    }

    function decrement(uint a) external pure returns(uint) {
        a --;
        return a;
    }

    function mathExample() external pure returns(uint) {
        uint a;
        a = a + 1; // 1
        a ++; // 2
        a = a * 2; // 4
        a = a ** 2; // 16
        a = a / 2; // 8
        a = a - 1; // 7
        a --; // 6
        return a;
    }
}

// Comparison
// Note: many types can be compared besides numbers
// This simply shows the operators
// Homework: try comparing more types, e.g., checking addresses, strings, etc...
contract Operators2 {
    function eq(uint a, uint b) external pure returns(bool) {
        return a == b;
    }

    function notEq(uint a, uint b) external pure returns(bool) {
        return a != b;
    }

    function gt(uint a, uint b) external pure returns(bool) {
        return a > b;
    }

    function lt(uint a, uint b) external pure returns(bool) {
        return a < b;
    }

    function gtOrEq(uint a, uint b) external pure returns(bool) {
        return a >= b;
    }

    function ltOrEq(uint a, uint b) external pure returns(bool) {
        return a <= b;
    }

    // Example of non-integer comparison
    function checkAddress() external pure returns(bool) {
        address address1 = 0x1aD91ee08f21bE3dE0BA2ba6918E714dA6B45836;
        address address2 = 0xe5c430b2Dd2150a20f25C7fEde9981f767A48A3c;
        return(address1 == address2);
    }
}

// Logical Operators
// Homework: try implementing more of these
// E.g. try checkingn expression equality like 1 + 1 == 2
contract Operators3 {
    function and(bool a, bool b) external pure returns(bool) {
        return a && b;
    }

    function or(bool a, bool b) external pure returns(bool) {
        return a || b;
    }

    function not(bool a) external pure returns(bool) {
        return !a;
    }

    function comparisonExample() external pure returns(bool) {
        return (1 + 1 == 2) && (2 + 2 == 4);
    }
}
