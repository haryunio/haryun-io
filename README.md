# haryun.io

[haryun.io](https://haryun.io)에 배포되는 개인 블로그입니다. Jekyll과 GitHub Pages를 기반으로 운영하며, 한국어와 영어 콘텐츠를 제공합니다.

## 기술 스택

- [Jekyll 4.4.1](https://jekyllrb.com/)
- [Scriptor Jekyll Theme](https://github.com/JustGoodThemes/Scriptor-Jekyll-Theme)
- [jekyll-polyglot](https://github.com/untra/polyglot): 다국어 페이지 생성
- `jekyll-paginate`: 포스트 페이지네이션
- `jekyll-sitemap`: 사이트맵 생성
- Sass 및 Liquid 템플릿
- GitHub Actions 및 GitHub Pages

## 저장소 구조

```text
.
├── .github/
│   └── workflows/
│       └── jekyll.yml          # GitHub Pages 빌드 및 배포
├── CNAME                       # 커스텀 도메인
├── README.md
├── run-build.sh                # 로컬 정적 빌드 스크립트
└── haryun-io-blog/             # Jekyll 사이트 소스
    ├── _config.yml             # 사이트 및 플러그인 설정
    ├── _data/                  # 작성자, 소셜 링크, 다국어 데이터
    ├── _includes/              # 공통 Liquid 컴포넌트
    ├── _layouts/               # 페이지와 포스트 레이아웃
    ├── _posts/
    │   ├── articles/           # 영문 아티클
    │   ├── portfolio/          # 영문 포트폴리오
    │   └── ko/                 # 한글 콘텐츠
    ├── _sass/                  # Sass 스타일 모듈
    ├── assets/                 # CSS, JavaScript, 폰트
    ├── images/                 # 사이트 및 포스트 이미지
    ├── Gemfile
    └── Gemfile.lock
```

실제 사이트 코드는 `haryun-io-blog/` 아래에 있습니다. `_site/`과 `.jekyll-cache/`는 Jekyll이 생성하는 로컬 산출물이며 Git에서 제외됩니다.

## 블로그 구조

블로그는 다음 영역으로 구성됩니다.

- **Home**: 최신 포스트와 주요 콘텐츠
- **Articles**: 기술, 법, 학습 및 관심 분야에 관한 글
- **Portfolio**: 프로젝트와 경력 중심의 기록
- **CV**: 경력과 활동 이력
- **About**: 블로그와 작성자 소개
- **Tags**: 태그별 포스트 탐색

사이트는 영어를 기본 언어로 사용하고 한국어 페이지를 별도 경로로 생성합니다. 다국어 설정과 내비게이션은 `haryun-io-blog/_config.yml`에서 관리합니다.

## 로컬 개발

### 요구 사항

- Ruby 3.3 권장
- Bundler 2.6.9

GitHub Actions 빌드 환경도 Ruby 3.3을 사용합니다.

### 의존성 설치

```bash
cd haryun-io-blog
gem install bundler:2.6.9  # 필요한 경우
bundle install
```

### 개발 서버 실행

```bash
cd haryun-io-blog
bundle exec jekyll serve --livereload
```

기본 주소는 `http://localhost:4000`입니다. `_config.yml`을 변경한 경우 개발 서버를 다시 시작해야 합니다.

### 정적 빌드

저장소 루트에서:

```bash
./run-build.sh
```

또는 Jekyll 디렉터리에서 직접 실행할 수 있습니다.

```bash
cd haryun-io-blog
bundle exec jekyll build
```

생성된 사이트는 `haryun-io-blog/_site/`에 저장됩니다.

## 주요 설정

### Jekyll

`haryun-io-blog/_config.yml`에서 다음 항목을 관리합니다.

- 사이트 제목, 설명 및 URL
- 지원 언어와 기본 언어
- 언어별 내비게이션
- 페이지네이션과 permalink
- Sass 빌드 옵션
- Jekyll 플러그인

설정 파일을 변경한 뒤에는 Jekyll 개발 서버를 재시작해야 합니다.

### 콘텐츠와 레이아웃

- 포스트: `haryun-io-blog/_posts/`
- 고정 페이지: `haryun-io-blog/`의 Markdown 및 HTML 파일
- 공통 레이아웃: `haryun-io-blog/_layouts/`
- 헤더, 푸터 등 재사용 요소: `haryun-io-blog/_includes/`
- 언어별 데이터: `haryun-io-blog/_data/`
- 스타일: `haryun-io-blog/_sass/`, `haryun-io-blog/assets/css/`

## 배포

`main` 브랜치에 변경사항을 푸시하면 `.github/workflows/jekyll.yml`이 자동으로 실행됩니다.

1. 저장소 체크아웃
2. Ruby 및 Bundler 의존성 준비
3. `haryun-io-blog/`에서 프로덕션 Jekyll 빌드
4. `_site/` 빌드 결과를 GitHub Pages artifact로 업로드
5. GitHub Pages 배포

수동 실행은 GitHub 저장소의 **Actions** 탭에서 가능하며, 같은 화면에서 빌드 및 배포 로그를 확인할 수 있습니다.

## 의존성 관리

의존성은 `haryun-io-blog/Gemfile`과 `Gemfile.lock`으로 관리합니다.

```bash
cd haryun-io-blog
bundle update
bundle exec jekyll --version
```

새 Jekyll 플러그인을 추가할 때는 `Gemfile`과 `_config.yml`의 `plugins` 설정을 함께 확인해야 합니다.
