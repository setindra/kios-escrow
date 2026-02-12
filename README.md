# kios-escrow

A portfolio-grade Ethereum smart contract project implementing a **trustless escrow system** for peer-to-peer transactions.

This repository demonstrates the evolution from a simple single-transaction escrow contract to a reusable **multi-escrow architecture**, designed with security, clarity, and real-world usability in mind.

---

## Project Overview

The goal of this project is to showcase practical smart contract development using Solidity, including:

- Secure ETH handling  
- Access control design  
- Multi-transaction state management  
- On-chain deployment and verification  
- Clean contract architecture  

The contracts were deployed, verified, and tested on the **Sepolia testnet**.

---

## Project Structure

    kios-escrow/
    ├─ contracts/
    │  ├─ KiosEscrow.sol      (V1: Single escrow)
    │  └─ KiosEscrowV2.sol    (V2: Multi-escrow system)
    └─ README.md

---

## Project Evolution

### V1 — KiosEscrow.sol

A simple escrow smart contract that supports **one transaction per contract**.

**Purpose:**
- Learn escrow mechanics  
- Understand ETH transfers  
- Implement basic access control  

---

### V2 — KiosEscrowV2.sol (Main Project)

A scalable **multi-escrow smart contract** supporting multiple concurrent escrow transactions using unique escrow IDs.

**Key Improvements:**

- Struct-based escrow modeling  
- Mapping for escrow ID management  
- Modifier-based access control  
- Event emission for transparency  
- Reusable contract architecture  
- Separation of state per transaction  

This version reflects a more production-oriented contract design.

---

## Features (V2)

- Create multiple escrow transactions  
- Buyer-funded escrow using ETH  
- Buyer-only confirmation to release funds  
- Seller refund mechanism  
- Escrow isolation using unique IDs  
- Secure state validation  
- Event logs for on-chain tracking  

---

## Smart Contract Flow (V2)

1. Buyer creates an escrow  
2. Buyer funds the escrow with ETH  
3. Buyer confirms receipt  
4. ETH is released to the seller (or refunded if necessary)  

All actions are scoped to a specific escrow ID to prevent transaction overlap.

---

## Testing and Deployment

- **Network:** Sepolia Testnet (Chain ID: 11155111)  
- **Status:** Deployed, verified, and tested end-to-end  

**Contract Address (V2):**  
`0x689B6eE3fA573ac679566B6bC6d8b29DbE2FeF70`

**Explorer:**  
https://testnet.routescan.io/address/0x689B6eE3fA573ac679566B6bC6d8b29DbE2FeF70

Transactions were successfully executed with full block confirmations on-chain.

---

## Tools and Stack

- Solidity ^0.8.20  
- Remix IDE  
- MetaMask  
- Sepolia Testnet  
- Blockscout / Sourcify  

---

## Future Improvements

- Add dispute resolution mechanism  
- Implement time-based escrow expiration  
- Add front-end integration (Next.js + Ethers.js)  
- Add automated testing using Hardhat or Foundry  
- Implement upgradeable contract pattern  

---

## Notes

This project was built as a structured portfolio milestone, focusing on real-world contract behavior, state isolation, and secure ETH handling.

---

## Author

Built as part of a Web3 learning and portfolio journey, focused on smart contract engineering and decentralized application architecture.
