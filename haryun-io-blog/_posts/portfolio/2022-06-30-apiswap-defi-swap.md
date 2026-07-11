---
layout: post
title: "APISwap: From Smart Contracts to the User's Transaction"
categories: [portfolio]
tags: [Portfolio, Blockchain, DeFi, Product]
featured_image_thumbnail:
featured_image:
featured: false
hidden: false
lang: en
page_id: apiswap-defi-swap
---

APISwap was a DeFi project for token swaps and wrapped-token operations. I connected the complete transaction flow, from Solidity contracts and a local test environment to a React web interface. It demonstrated clearly that a contract calculating correctly and a user completing a trade safely are different problems.

<!--more-->

## Project context

A decentralized trade is not finalized by an intermediary's server. The user signs directly through a wallet, and a smart contract calculates the result from on-chain state. A contract defect can repeat across many users, while a misleading interface can induce someone to sign an irreversible transaction.

APISwap therefore combined swap and related on-chain components with an interface through which users could connect a wallet, inspect the terms, and follow the result.

## My role

- Software engineer
- Smart-contract development and validation
- Web3 frontend implementation
- Iteration based on post-launch feedback

**Period:** January–June 2022

## What I worked on

I implemented swap and wrapped-token contracts in Solidity. Beyond successful transactions, I reviewed input validation, permissions, balances, and failure conditions. I built a local chain with Truffle and Ganache so that deployment and invocation could be tested repeatedly before real assets were involved.

Using React and Web3.js, I developed the flow for wallet connection, token selection, approval, and swap execution. The interface synchronized visible balances with contract state and helped users understand what to do after a wallet rejection or failed transaction.

After launch, I used observed failures and user friction to refine the product. The sequence engineers expected was not always how people handled their wallets, and network delay and approval transactions created confusion. Diagnosing these issues required looking at both the screen and the on-chain state.

## What I learned

APISwap made it impossible to treat the contract and frontend as separate deliverables. A safe contract is not enough if the interface fails to explain its risks. A smooth interface is meaningless if price calculations or permissions are flawed.

Trust in a DeFi product is built across layers: contract logic, reproducible testing, wallet approval, and accurate communication of transaction status. This project taught me to follow a user's single click through every system step until it becomes a final result.

## Technology and link

- **Smart contracts:** Solidity
- **Testing:** Truffle, Ganache
- **Frontend:** React, Web3.js
- APISwap: [swap.apis.eco](https://swap.apis.eco/)

---

*Technologies: Solidity, Truffle, Ganache, React, Web3.js, DeFi*
