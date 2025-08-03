// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Errors1 {

    event Log(string message);

    // Require:
        // Note: This is used to validate conditions and revert the transaction if the condition is not met
        // It is commonly used to check inputs or conditions before executing further logic
        // If the condition is false, it reverts the transaction and can include a custom error message
    function example1(uint _value) public {
        require(_value > 10, "must be greater than 10");
        emit Log("success");
    }

    // Revert:
        // Note: This is similar to require, but you can use it to revert with a custom message
        // It can be used in more complex conditions or when you want to revert without a require
    function example2(uint _value) public {
        if (_value <= 10) {
            revert("must be greater than 10");
        }
        emit Log("success");
    }

    // Assert:
        // Note: This is usually used to check for internal values/errors and should never fail
        // Typically used to check for equalities
    function example3(uint _value) public {
        assert(_value == 10);
        emit Log("success");
    }

    // Custom error:
        // Note: Custom errors are a more gas-efficient way to handle errors in Solidity
        // They allow you to define your own error types and can include additional data
        // This is useful for complex contracts where you want to provide more context on the error
    error InvalidValue(uint value);

    function example4(uint _value) public {
        if (_value <= 10) {
            // You can add more arguments to this...
            revert InvalidValue({value: _value });
        }
        emit Log("success");
    }
}
