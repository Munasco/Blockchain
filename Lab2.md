# Lab 2

## Task 1: Check if a contract has code

```solidity
function hasCode(address _addr) public view returns (bool) {
    uint256 size;
    assembly {
        size := extcodesize(_addr)
    }
    return size > 0;
}
```

This function helps in identifying if a given Ethereum address is a smart contract or a regular externally-owned account (EOA). Using the assembly function extcodesize, we can retrieve the size of the code at a specified address. If the size is greater than zero, it indicates that the address has associated contract code. This can be useful in various scenarios, such as when you want to ensure that an address is an actual contract before interacting with it, or when trying to differentiate between contracts and EOAs.

## Task 3: Advantages and Disadvantages of Atomic Swaps and Cross-Chain Bridges


### Advantages of Atomic Swaps

Trustless: No need for intermediaries or escrow services.
Cost-effective: Avoids the fees associated with exchanges or third-party services.
Decentralization: Supports the decentralized ethos of cryptocurrencies.

### Disadvantages of Atomic Swaps

- Requires compatible wallet software and some technical know-how
- Limited support: Not all cryptocurrencies support atomic swaps.
- Requires liquidity: Effective swaps require active markets for both involved currencies.

Cross-Chain Bridges:

### Advantages of Cross-Chain Bridges

Interoperability: Enables transactions between different blockchains.
Expands functionality: Allows assets from one chain to utilize dApps on another chain.
Potential for increased liquidity as assets move between chains.

### Disadvantages of Cross-Chain Bridges

Centralization risks: Some bridges are operated by a single entity, introducing centralization.
Complexity: Implementing a bridge securely can be technically challenging.
Potential for lost funds: If a bridge fails or has vulnerabilities, funds can be lost.
