---
layout: post
title: "Firmachain: (v0.5.1-patch2) CometBFT 긴급 보안 패치 대응"
categories: [portfolio]
tags: [Portfolio, Blockchain, Cosmos, Security, Release Engineering]
featured_image_thumbnail: /images/firmachain/csa_1.jpeg
featured_image: /images/firmachain/csa_1.jpeg
featured: false
hidden: false
lang: ko
page_id: firmachain-core-v051-patch2
---

Cosmos 생태계 전반에 영향을 주는 **CometBFT 크리티컬 보안 패치(CSA-2026-001)** 공개에 맞춰, Firmachain은 **v0.5.1-patch2**를 신속하게 준비하고 안전하게 릴리즈했습니다.  
이번 글에서는 *“공개 전 프라이빗 대응 → 릴리즈 준비 → 테스트 검증 → 운영 업그레이드 가이드 정리”*까지의 흐름을 기록합니다.

<!--more-->

## Project Overview

이번 이슈는 CometBFT의 합의 레벨(Consensus-level) 취약점으로, 블록 타임스탬프(시간)에 의존하는 모듈/컨트랙트/시스템 전반에 다운스트림 영향이 생길 수 있는 유형이었습니다.  
Cosmos Labs는 프라이빗 윈도우 기간 동안 체인들과 함께 안전한 업그레이드를 준비했고, 공개 시점에 맞춰 패치 버전을 릴리즈했습니다.

Firmachain의 대응 원칙은 단순했습니다.

- **합의(체인 상태)를 깨지 않는 롤링 업그레이드로 빠르게 적용**
- **거버넌스/체인 버전 변경 없이 “바이너리 패치”로 최소 변경**
- **검증 가능한 테스트 범위를 확보한 뒤 배포**

## My Role

- Software Engineer, Development Team Lead
- 보안 패치 대응 릴리즈 오너십 (릴리즈 브랜치/PR 정리, 테스트 플랜 수립, 배포 체크리스트 운영)
- 검증자/노드 운영 관점의 업그레이드 가이드 정리

## Timeline

- **Jan 2026**
  - **Jan 23, 2026**: CSA-2026-001 공식 패치 버전 공개(CometBFT v0.38.21 / v0.37.18)
  - **Jan 26, 2026**: Firmachain **v0.5.1-patch2** 릴리즈

## What I Worked On

### 1) “최소 변경” 패치 전략 확정

이번 릴리즈는 체인 버전(=프로토콜 버전)을 올리는 업그레이드가 아니라,
**Firmachain 바이너리만 교체하는 Non-breaking patch**로 설계했습니다.

- 체인 바이너리: `v0.5.1-patch` → `v0.5.1-patch2`
- 체인 버전: **v0.5.1 유지 (NO CHAIN VERSION CHANGES)**
- 거버넌스 프로포절: **불필요**
- 체인 중단/업그레이드 블록 높이: **불필요 (즉시 적용 가능)**

핵심은 “필수 보안 패치”를 **운영 리스크 최소화**와 함께 처리하는 것이었습니다.

### 2) CometBFT 보안 패치 버전 반영

공식 권고에 따라, CometBFT는 **패치된 지원 버전으로 상향**해야 했고 우회책은 없었습니다.
Firmachain은 기존 CometBFT를 다음으로 업데이트했습니다.

- CometBFT (Consensus): **v0.38.18 → v0.38.21**

이 방식은 체인 상태를 깨지 않으면서도(Non-consensus breaking),
필수 보안 수정사항을 반영하는 가장 안전한 경로였습니다.

### 3) 테스트 커버리지 확보: “빨리”가 아니라 “확실히”

보안 패치는 빨리 적용하는 것도 중요하지만,
운영 체인에서의 *예상치 못한 부작용*이 더 큰 장애를 만들 수 있습니다.

그래서 릴리즈 노트에 명시된 수준으로 테스트 범위를 구성하고,
각 환경에서 “체인 운영자가 실제로 하게 될 행동”을 그대로 재현했습니다.

- Local: 유닛 테스트 + CLI 명령 검증
- Devnet: 유닛 테스트 + CLI + E2E 테스트
- Testnet(Imperium-4): 스마트 컨트랙트 트랜잭션 + state-sync 검증

특히 **state-sync**와 **컨트랙트 트랜잭션**은 운영 이슈로 직결되기 때문에,
테스트넷에서 실제 트래픽과 유사한 흐름으로 확인했습니다.

### 4) 운영 관점: 롤링 업그레이드로 “중단 없이” 적용

이번 패치는 “체인 halt/협의”가 필요 없는 형태였습니다.

- 검증자/풀노드가 **원하는 시점에 순차적으로 바이너리만 교체**
- 네트워크 전체를 멈추지 않고도 적용 가능
- 업그레이드 타이밍은 각 노드 운영자가 선택 가능

결과적으로 “필수 보안 패치”라는 압박이 있는 상황에서도,
네트워크 안정성을 유지한 채로 대응할 수 있었습니다.

## Tech Stack (High-Level)

- **Mainnet**: Cosmos 기반 L1 (Firmachain colosseum)
- **Consensus**: CometBFT (v0.38.21)
- **Release Type**: Non-breaking patch (체인 버전 v0.5.1 유지)

## Results

- CSA-2026-001 공개 일정에 맞춰 **Firmachain v0.5.1-patch2를 안전하게 릴리즈**
- **체인 중단/거버넌스 변경 없이** 필수 보안 패치 반영
- Local/Devnet/Testnet 단계별 검증으로 **운영 리스크 최소화**
- 검증자/풀노드가 **롤링 업그레이드로 즉시 적용 가능한 형태**로 정리

---

**Release Links:**
- [Firmachain v0.5.1-patch2 Release Notes](https://github.com/FirmaChain/firmachain/releases/tag/v0.5.1-patch2)
- [CSA-2026-001 Advisory (CometBFT)](https://github.com/cometbft/cometbft/security/advisories/GHSA-c32p-wcqj-j677)
- [CometBFT v0.38.21](https://github.com/cometbft/cometbft/releases/tag/v0.38.21)

*Technologies: Cosmos-based Mainnet, CometBFT, Security Patch, Release Engineering, Network Stability*