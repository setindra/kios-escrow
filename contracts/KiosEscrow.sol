// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract KiosEscrow {
    address public buyer;
    address public seller;
    uint256 public amount;
    bool public isFunded;
    bool public isCompleted;

    constructor(address _seller) {
        buyer = msg.sender;
        seller = _seller;
    }

    // Buyer sends ETH to the escrow
    function fundEscrow() external payable {
        require(msg.sender == buyer, "Only buyer can fund");
        require(!isFunded, "Escrow already funded");
        require(msg.value > 0, "Amount must be greater than zero");

        amount = msg.value;
        isFunded = true;
    }

    // Buyer confirms goods/services received
    function confirmReceived() external {
        require(msg.sender == buyer, "Only buyer can confirm");
        require(isFunded, "Escrow not funded");
        require(!isCompleted, "Escrow already completed");

        isCompleted = true;

        (bool success, ) = payable(seller).call{value: amount}("");
        require(success, "Payment to seller failed");
    }

    // Seller refunds buyer (if transaction is cancelled)
    function refundBuyer() external {
        require(msg.sender == seller, "Only seller can refund");
        require(isFunded, "Escrow not funded");
        require(!isCompleted, "Escrow already completed");

        isCompleted = true;

        (bool success, ) = payable(buyer).call{value: amount}("");
        require(success, "Refund to buyer failed");
    }

    // Helper function to check contract balance
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
