# 🧪 Solidity Intensive

> **A complete Solidity language reference — 18 contract modules covering every core concept from types to DeFi interactions.**

[![Build Status](https://github.com/drasticstatic/solidity_intensive/actions/workflows/pages.yml/badge.svg)](https://github.com/drasticstatic/solidity_intensive/actions/workflows/pages.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-lightgrey?style=flat-square)](LICENSE)
[![Solidity](https://img.shields.io/badge/Solidity-^0.8-363636?style=flat-square&logo=solidity)](https://soliditylang.org/)
[![Hardhat](https://img.shields.io/badge/Hardhat-tested-yellow?style=flat-square)](https://hardhat.org/)
[![Live Reference](https://img.shields.io/badge/reference-live-0a7bff?style=flat-square&logo=githubpages)](https://drasticstatic.github.io/solidity_intensive)

## 📖 About

This repository is a structured deep-dive into the Solidity language — built as a personal reference during an intensive blockchain developer bootcamp. Each contract isolates a single concept with clean, commented examples and corresponding Hardhat tests.

Think of it as a Solidity cookbook: every chapter is a standalone recipe you can copy, adapt, and build from.

## 📂 Contract Modules

| Contract | Concept |
|----------|---------|
| `Types.sol` | Value types: `uint`, `int`, `bool`, `address`, `bytes` |
| `Variables.sol` | State, local, and global variables; visibility modifiers |
| `Functions.sol` | Pure, view, payable functions; return values; modifiers |
| `Conditionals.sol` | `if`/`else`, ternary, `require`, `revert` |
| `Loops.sol` | `for`, `while`, `do-while`; gas considerations |
| `Operators.sol` | Arithmetic, logical, bitwise, and comparison operators |
| `Arrays.sol` | Fixed and dynamic arrays; push/pop/delete; memory vs. storage |
| `Mappings.sol` | Key-value mappings; nested mappings; enumeration limitations |
| `Structs.sol` | Custom data types; struct arrays; storage patterns |
| `Enums.sol` | Enumerated types; state machines |
| `Constructors.sol` | Initialization patterns; constructor arguments; ownership |
| `Events.sol` | Emitting events; indexed parameters; frontend subscriptions |
| `Errors.sol` | Custom errors; `require` vs. `revert`; gas savings |
| `Inheritance.sol` | `is` keyword; `virtual`/`override`; multiple inheritance; `super` |
| `Ether.sol` | `msg.value`; `payable`; `transfer`/`send`/`call`; receive/fallback |
| `Time.sol` | `block.timestamp`; time-based access control |
| `Token.sol` | Manual ERC-20 implementation from scratch (no OpenZeppelin) |
| `Interactions.sol` | Calling external contracts; interfaces; low-level `call` |

## 🚀 Getting Started

```bash
git clone https://github.com/drasticstatic/solidity_intensive.git
cd solidity_intensive
npm install
npx hardhat compile
npx hardhat test
```

## 🧪 Running Tests

```bash
# Run all tests with gas reporting
GAS_REPORT=true npx hardhat test

# Run a single test file
npx hardhat test test/Token.js

# Start a local Hardhat node
npx hardhat node
```

## 🛠 Tech Stack

- **Solidity** `^0.8` — EVM smart contract language
- **Hardhat** — development environment, testing framework, local EVM node
- **ethers.js** — JavaScript library for contract interaction in tests
- **Node.js** — runtime for scripts and tests

## 🔗 Live Reference

**[drasticstatic.github.io/solidity_intensive](https://drasticstatic.github.io/solidity_intensive)** — browse all modules in a navigable reference

---

*Part of the [DAPPU Blockchain Developer Bootcamp](https://github.com/drasticstatic) curriculum.*
*Maintained by [drasticstatic](https://github.com/drasticstatic)*
