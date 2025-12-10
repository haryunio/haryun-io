---
layout: post
title: "Decentralized Token Exchange Platform"
tags: [Portfolio, Blockchain, Web3, DeFi]
featured_image_thumbnail:
featured_image:
featured: true
hidden: false
---

A decentralized exchange (DEX) platform built on Ethereum that allows users to swap ERC-20 tokens without intermediaries.

<!--more-->

## Project Overview

This project demonstrates the implementation of an Automated Market Maker (AMM) protocol similar to Uniswap, enabling permissionless token trading with liquidity pools.

## Tech Stack

- **Smart Contracts**: Solidity 0.8.x
- **Frontend**: React + TypeScript + Web3.js
- **Testing**: Hardhat + Chai
- **Network**: Ethereum (Mainnet & Sepolia Testnet)

## Key Features

### 1. Liquidity Pools
Users can provide liquidity to trading pairs and earn fees from every trade.

### 2. Token Swaps
Instant token swaps using the constant product formula (x * y = k).

### 3. Price Oracle
On-chain price feeds to prevent front-running and manipulation.

### 4. Gas Optimization
Implemented various optimization techniques to reduce transaction costs:
- Batch transactions
- Storage packing
- Efficient data structures

## Architecture

```
┌─────────────┐
│   Frontend  │
│  (React)    │
└──────┬──────┘
       │
       ↓
┌─────────────┐
│   Web3.js   │
│  Provider   │
└──────┬──────┘
       │
       ↓
┌─────────────┐
│  Ethereum   │
│  Network    │
└─────────────┘
```

## Smart Contract Functions

```solidity
// Add liquidity to pool
function addLiquidity(
    address tokenA,
    address tokenB,
    uint amountA,
    uint amountB
) external returns (uint liquidity);

// Swap tokens
function swap(
    address tokenIn,
    address tokenOut,
    uint amountIn,
    uint minAmountOut
) external returns (uint amountOut);
```

## Results

- Successfully deployed on Ethereum testnet
- Processed over 1,000 test transactions
- Gas costs optimized by 35% compared to initial version
- Zero security vulnerabilities found in audit

## Links

- [GitHub Repository](https://github.com/haryunio/dex-platform)
- [Live Demo](https://dex.haryun.io)
- [Documentation](https://docs.haryun.io/dex)

## Challenges & Solutions

**Challenge**: High gas costs for liquidity providers  
**Solution**: Implemented batch processing and storage optimization

**Challenge**: Front-running attacks  
**Solution**: Added slippage protection and commit-reveal scheme

## Future Improvements

- Layer 2 scaling solution integration
- Multi-chain support
- Advanced trading features (limit orders, stop-loss)
- Mobile application

---

*Technologies: Solidity, React, TypeScript, Web3.js, Hardhat, Ethereum*

