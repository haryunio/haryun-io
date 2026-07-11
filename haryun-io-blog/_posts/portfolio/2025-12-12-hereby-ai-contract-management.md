---
layout: post
title: "Hereby: Making AI a Trustworthy Tool for Contract Work"
categories: [portfolio]
tags: [Portfolio, AI, Backend, Product, Project Management, Data]
featured_image_thumbnail: /images/hereby/hereby_ui_small.png
featured_image: /images/hereby/hereby_ui_small.png
featured: false
hidden: false
lang: en
page_id: hereby-ai-contract
---

Hereby is an AI contract-management platform connecting preparation, review, execution, and post-signature operations. I worked across backend and AI engineering while helping translate requirements into a product and bring it to release. The hard part was not attaching OCR and an LLM to a document. It was making imperfect AI output inspectable and safe enough to support real contract work.

<!--more-->

## The problem we set out to solve

Contract information easily becomes fragmented. Source files, revisions, decisions in email and messaging, and post-signature obligations often live in separate tools. Finding one clause or confirming missing information can require rereading the document and retracing conversations.

Hereby connects the contract, structured data, and action history in one view, with AI supporting review and follow-up work. The objective was not to automate legal judgment. It was to reduce repetitive retrieval and organization so users could focus on consequential decisions.

{% include image_full.html imageurl="/images/hereby/hereby_ui_1.png" title="Hereby contract viewer and AI assistant" caption="Hereby's contract view brings the source document, action history, and review guidance together." %}

## My role

- Software engineer at FIG
- Python backend and AI development
- Product requirements and release execution
- Internal LLM inference infrastructure

**Period:** December 2024–present

## Turning documents into usable data

A contract is not an ordinary text file. Tables, signatures, annotations, and page layout carry meaning, while scan quality varies. An OCR error can propagate into clause extraction and summarization. I designed a pipeline that extracted text and structure, validated the result as usable data, and then passed it into product workflows.

Extracted information was never treated as an answer detached from its source. Users needed to see where a value came from and correct it when necessary. Leaving a path back to the original document was central to trust.

## The AI assistant and agent workflows

I implemented LLM and agent workflows that identified missing or inaccurate fields and guided users toward the next step in review and contract operations. The goal was to turn model output into an action, not merely summarize a long document.

In production, quality varies with the document and its context. Prompt changes alone were not enough. We improved input processing, constrained the tools and scope available to agents, and validated outputs against product data structures. When the AI could not be confident, the interface needed to expose that uncertainty and return the judgment to the user.

## Internal inference infrastructure

I built internal LLM inference infrastructure with vLLM for product workloads. Running a model was the easy part. The system also had to process requests reliably, expose latency and resource use, and provide enough observability to diagnose failures.

Contracts can contain sensitive information, so processing environment and access boundaries were product concerns as well. Quality, cost, and response time had to be considered together with where data was handled. The internal inference layer provided a foundation for controlling those requirements and extending models and features over time.

## Product execution

Alongside engineering, I helped define requirements, establish milestones, and coordinate stakeholders. In an AI product, there is a wide gap between a demonstration that is possible and a feature that is ready to ship. Edge cases, quality thresholds, and operating cost all influence how much capability can responsibly be exposed to users.

Working directly on both backend/AI implementation and product decisions helped narrow that gap. I could connect a requirement to its technical cost and translate model limitations into the way the product explained a result.

## Results and lessons

We connected OCR and LLM-based contract processing, internal inference infrastructure, and an AI assistant into the product. The resulting workflow reduced repetitive information checking and brought the source contract, structured data, and follow-up work into one system.

Hereby taught me that AI product quality is not defined by how persuasive an answer sounds. Users need to inspect its basis, correct mistakes, and understand who remains responsible for an important decision. In a domain built on trust, AI should not become a black box that replaces judgment. It should be a verifiable tool that helps people exercise judgment more accurately and efficiently.

## Link

- Product: [hereby.me](https://hereby.me)

---

*Technologies: Python, vLLM, OCR, LLMs, AI agents, backend, product management*
