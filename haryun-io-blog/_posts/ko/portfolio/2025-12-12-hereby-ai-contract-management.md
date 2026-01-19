---
layout: post
title: "Hereby: AI 기반 계약 관리 플랫폼"
categories: [portfolio]
tags: [Portfolio, AI, Backend, Product, Project Management, Data]
featured_image_thumbnail: /images/hereby/hereby_ui_small.png
featured_image: /images/hereby/hereby_ui_small.png
featured: false
hidden: false
lang: ko
page_id: hereby-ai-contract
---

계약 워크플로우 전 과정(준비, 검토, 체결, 체결 후 운영)을 지원하는 AI 기반 계약 관리 플랫폼으로, **OCR + LLM/에이전트** 기능이 통합되어 있습니다. Python으로 **제품 실행**과 **개발(백엔드, AI)**을 함께 수행했습니다.

<!--more-->

## 프로젝트 개요

Hereby([hereby.me](https://hereby.me))는 계약 운영에서 발생하는 마찰을 줄이기 위해 만든 AI 기반 계약 관리 플랫폼입니다. 문서 뷰어, 구조화된 데이터, 협업 이력을 하나로 묶고, 누락 필드 식별, 주요 조건 추출, 후속 워크플로우 지원을 위한 AI 어시스턴트를 제공합니다.

{% include image_full.html imageurl="/images/hereby/hereby_ui_1.png" title="Hereby: 계약 뷰어 및 AI 어시스턴트" caption="조치 이력과 검토 가이드를 제공하는 AI 어시스턴트 패널이 포함된 계약 뷰어." %}

## 역할

- 소프트웨어 엔지니어 (백엔드 + AI)
- 제품 관리 및 실행 (요구사항 → 출시)

## 기간

- **2024년 12월 - 현재**

## 기술 스택

- **백엔드 / AI**: Python
- **AI**: LLM 기반 기능, 에이전트 워크플로우
- **추론**: vLLM (내부 추론 인프라)
- **문서**: OCR + 계약 처리 파이프라인

## 주요 기여

### AI 추론 인프라 (vLLM)

- 제품 워크로드를 지원하기 위한 **vLLM** 기반 내부 LLM 추론 인프라 구축
- 운영 환경의 제약에 집중: 신뢰성, 지연, 운영 가시성

### OCR + AI 기반 계약 처리

- 계약 문서를 구조화되고 사용 가능한 데이터로 변환하기 위한 OCR + AI 처리 구조 설계 및 구현
- 추출 및 검증 결과를 제품 워크플로우(검토 및 후속 조치)에 통합

### 에이전트 계약 워크플로우

- 계약 관리 작업을 지원하는 에이전트 워크플로우 구현 (예: 누락/부정확한 필드 식별, 사용자에게 다음 단계 안내)
- 실제 제품 UX 및 품질 기대에 맞게 프롬프트 및 툴링 패턴 반복 개선

### 제품 실행

- 요구사항 정의부터 출시까지 실행 주도: 스코핑, 마일스톤 계획, 이해관계자 조율
- 정확성을 희생하지 않고 빠르게 출시하기 위해 제품 요구사항과 구현 세부사항 연결

## 결과

- 계약 검토 및 운영 워크플로우를 개선한 백엔드 + AI 기능 출시
- OCR/LLM 기반 계약 자동화를 위한 확장 가능한 기반 구축

## 참고

- 팀 소속: FIG (Firma Innovation Group)

## 링크

- 제품: [hereby.me](https://hereby.me)

---

*기술: Python, vLLM, OCR, LLMs, 에이전트, 백엔드, 제품 관리*


