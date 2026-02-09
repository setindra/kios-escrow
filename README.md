# kios-escrow

Ethereum escrow smart contract for peer-to-peer transactions, deployed and verified on Sepolia testnet.

> ⚠️ This project is built for learning and portfolio purposes only.  
> It has not been audited and should not be used in production.

---

## Overview

KiosEscrow is a simple Ethereum-based escrow smart contract designed for transactions where the buyer and seller do not meet face-to-face.

The contract securely holds funds and releases them only after the buyer confirms receipt of goods or services, eliminating the need for a trusted third-party escrow.

---

## Deployed Contract (Sepolia Testnet)

- Network: Sepolia Testnet
- Contract Address: `0x55dBCF68c3B63a4a4fFD67F621d69264E1e605B9`
- Explorer:  
  https://testnet.routescan.io/address/0x55dBCF68c3B63a4a4fFD67F621d69264E1e605B9
- Status: Verified

---

## Executed Escrow Flow (Public Testnet)

The escrow contract has been fully executed on the Sepolia testnet with the following lifecycle:

1. Contract deployed by buyer
2. Buyer funded the escrow with 0.01 ETH
3. Buyer confirmed receipt of goods
4. Funds were released to the seller
5. Escrow marked as completed and cannot be reused

All transactions are publicly verifiable on the blockchain explorer.

---

## Testing

The contract was tested using Remix and the Sepolia public testnet.

### Test Scenarios
- Buyer successfully funded the escrow
- Unauthorized accounts were blocked from funding or confirming
- Double execution was prevented after completion
- Funds were released only after buyer confirmation
- Contract state updated correctly after settlement

---

## Security Considerations

- Role-based access control (buyer vs seller)
- Checks-effects-interactions pattern
- ETH transfers implemented using `call`
- Escrow completion state prevents replay or double spending

---

## Key Learnings

- Implemented a trustless escrow mechanism using Solidity
- Deployed and verified a smart contract on a public testnet
- Executed real transactions using MetaMask
- Interacted with a verified contract via a blockchain explorer
- Understood the full smart contract lifecycle from deployment to settlement
