---
layout: post
title: "GDAC Market Surveillance: Turning Regulation into Real-Time Detection"
categories: [portfolio]
tags: [Portfolio, Blockchain, Compliance, Data, Backend, Project Management]
featured_image_thumbnail:
featured_image:
featured: false
hidden: false
lang: en
page_id: gdac-market-surveillance
---

To prepare GDAC Exchange for Korea's Virtual Asset User Protection Act, I helped develop a market-surveillance system based on the rules and guidance of the Financial Supervisory Service and Financial Services Commission. The work translated regulatory requirements into a system that detected suspicious patterns in near real time and connected each result to reproducible evidence and reporting.

<!--more-->

## Project context

Market surveillance is not simply a search for accounts with large trading volume. A useful system must distinguish ordinary market activity from patterns that may indicate unfair trading, then explain why an alert was produced. A threshold that is too broad overwhelms reviewers; one that is too narrow misses important signals.

Regulatory material defines principles and duties, but it does not specify every dataset, processing interval, and output format. Turning those obligations into data conditions and operating procedures was the first part of the project.

## My role

- Software engineer at Peertec/GDAC Exchange
- Data processing and detection-workflow development
- Translation of regulatory requirements into technical specifications
- Reporting and stakeholder coordination

**Period:** March–July 2024

## What I worked on

I participated in designing and implementing pipelines for exchange-scale datasets using AWS Glue, Athena, and S3. Order and trade data was organized into an analyzable form, with reproducible processing so the same criteria could be reviewed later. RabbitMQ connected event-driven portions of the near-real-time flow.

On that foundation, I built workflows that surfaced suspicious patterns in a form investigators could review. An alert needed more than a flag: it needed a traceable explanation of the trades and conditions that triggered it. Reviewers had to be able to return to source data and reconstruct the relevant facts.

I also supported data extraction and final reports for external and related institutions. This required translating between technical and regulatory language, coordinating scope and deadlines, and validating the output. The system was not complete until its results could support the actual reporting process.

## What I learned

Accuracy in a compliance system cannot be summarized by one model metric or threshold. The design must balance risks that cannot be missed against the number of alerts a review team can investigate. Data lineage, processing history, and the basis of a decision matter as much as detection performance.

Regulatory compliance was not documentation added after development. The required data, access rules, and reporting procedures had to shape the system from the beginning. This project gave me experience translating abstract legal and policy obligations into an executable data flow—and translating the results back into accountable reporting.

## Technology and link

- **Data pipeline:** AWS Glue, Athena, S3
- **Processing and extraction:** Python
- **Messaging:** RabbitMQ
- GDAC Exchange: [gdac.com](https://www.gdac.com/)

---

*Technologies: Python, AWS Athena, AWS Glue, S3, RabbitMQ, market surveillance, compliance*
