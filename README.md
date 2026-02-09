# kios-escrow

A portfolio-grade Ethereum smart contract project implementing a **trustless escrow system** for peer-to-peer transactions.

This repository demonstrates the evolution from a simple single-transaction escrow to a reusable **multi-escrow architecture**, designed with security, clarity, and real-world usability in mind.

---

## Project Overview

The goal of this project is to showcase practical smart contract development using Solidity, including:

- Secure ETH handling  
- Access control  
- Multi-transaction state management  
- On-chain verification and testing  

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
- Learn escrow fundamentals  
- Understand ETH transfers and access control  

---

### V2 — KiosEscrowV2.sol (Main Project)
A **multi-escrow smart contract** supporting **multiple concurrent escrow transactions** using unique escrow IDs.

**Key improvements:**
- Multiple escrows in one contract  
- Struct and mapping architecture  
- Event logging  
- Modifier-based access control  
- Production-style escrow flow  

---

## Features (V2)

- Create multiple escrow transactions  
- Buyer-funded escrow using ETH  
- Buyer-only confirmation to release funds  
- Seller refund mechanism  
- Secure access control via modifiers  
- Events emitted for major actions  

---

## Smart Contract Flow (V2)

1. Buyer creates an escrow  
2. Buyer funds the escrow with ETH  
3. Buyer confirms receipt  
4. ETH is released to the seller (or refunded if needed)  

All actions are scoped to a specific escrow ID.

---

## Testing and Deployment

- **Network:** Sepolia Testnet (Chain ID: 11155111)  
- **Status:** Deployed, verified, and tested end-to-end  

**Contract Address (V2):**  
`0x689B6eE3fA573ac679566B6bC6d8b29DbE2FeF70`

---

## Tools and Stack

- Solidity ^0.8.20  
- Remix IDE  
- MetaMask  
- Sepolia Testnet  
- Blockscout / Sourcify  

---

## Notes

This project was built as a **learning-to-production portfolio project**, focusing on clean architecture, secure ETH handling, and real-world usability.

---

## Author

Built as part of a Web3 learning and portfolio journey, focused on smart contract development.
