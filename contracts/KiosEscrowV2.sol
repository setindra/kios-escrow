# kios-escrow

A multi-escrow Ethereum smart contract that enables trustless peer-to-peer transactions between buyers and sellers.

This project supports multiple escrow transactions within a single contract, using unique escrow IDs to prevent state conflicts and transaction mix-ups.

---

## 🚀 Features

- Create multiple escrow transactions
- Buyer-funded escrow using ETH
- Buyer-only confirmation to release funds
- Seller refund mechanism
- Event logging for all major actions
- Secure access control with modifiers

---

## 🧱 Smart Contract Overview

**Contract:** `KiosEscrowV2`  
**Language:** Solidity ^0.8.20  
**Network:** Sepolia Testnet  

### Core Functions
- `createEscrow(address seller)`
- `fundEscrow(uint256 escrowId)`
- `confirmReceived(uint256 escrowId)`
- `refundBuyer(uint256 escrowId)`

Each escrow transaction is identified by a unique `escrowId`, ensuring isolation and safety across multiple transactions.

---

## 🧪 Tested Flow (End-to-End)

1. Buyer creates escrow
2. Buyer funds escrow with ETH
3. Buyer confirms receipt
4. ETH is released to seller

All steps were successfully tested on Sepolia.

---

## 🔍 Deployment & Verification

- **Contract Address:** `0x689B6eE3fA573ac679566B6bC6d8b29DbE2FeF70`
- **Explorer (Blockscout / Sourcify):** Verified
- **Testnet:** Sepolia (Chain ID: 11155111)

---

## 🛠 Tools Used

- Remix IDE
- MetaMask
- Solidity
- Sepolia Testnet
- Blockscout / Sourcify

---

## 📌 Notes

This project was built as a portfolio-grade Web3 project to demonstrate:
- Smart contract architecture
- Secure ETH handling
- Multi-transaction escrow design
- Real-world usability considerations
