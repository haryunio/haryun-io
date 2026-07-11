---
layout: post
title: "APIS Mainnet: My First Experience of the Weight of a Blockchain Launch"
categories: [portfolio]
tags: [Portfolio, Blockchain, Backend]
featured_image_thumbnail:
featured_image:
featured: false
hidden: false
lang: en
page_id: apis-mainnet
---

In 2018, I participated in the development and launch of the APIS mainnet. My work began with smart contracts, but releasing a live network required a much broader view. We had to verify EVM compatibility, place the testnet under load, investigate each issue, and determine whether the network could withstand real operating conditions.

<!--more-->

## Project context

The APIS mainnet provided chain-specific functionality on an EVM-compatible execution environment. For a network handling real assets, functional correctness alone was not enough. We needed to confirm that contracts behaved consistently, observe the network under transaction load, and look for failures that might not appear in a normal development environment.

This was one of my first opportunities to work on blockchain core infrastructure and smart contracts from a launch perspective. It was also where I learned that the development answer and the operational answer are not always the same.

## My role

- Software engineer
- Blockchain and Solidity smart-contract development
- Testnet and pre-mainnet verification

**Period:** August–December 2018

## What I worked on

I implemented Solidity contracts for features specific to the chain. Alongside the normal flow, I reviewed permissions, state transitions, and failure conditions. Even in an EVM-compatible environment, deploying and invoking contracts could expose differences in network configuration, tooling, and transaction processing, so repeated validation was necessary.

During the testnet phase, I supported stress testing and observed network behavior under load. When failures appeared, I collected logs and reproduction conditions, separated contract problems from environment-level issues, and supported the cycle of correction and revalidation. Before launch, I also helped review known issues and readiness conditions for mainnet go-live.

## What I learned

This project taught me that a blockchain launch resembles a software deployment but carries a different kind of weight. An ordinary service can replace a server or correct data after an incident. Mainnet state and completed transactions are much harder to reverse. A small assumption can affect real assets and trust in the network.

The objective was therefore not to claim that the code was perfect. It was to expose likely failure points early, reproduce problems consistently, and launch with a shared understanding of the remaining risks. That principle has stayed with me in later mainnet and smart-contract work: feature implementation is only the beginning, and verifying that a system can survive production is part of the engineer's responsibility.

---

*Technologies: Solidity, EVM compatibility, mainnet engineering, stress testing*
