# haryun-io

Personal blog built with Jekyll 4.4.1 using the [Scriptor theme](https://github.com/JustGoodThemes/Scriptor-Jekyll-Theme) and hosted on GitHub Pages.

## 📁 Repository Structure

```
haryun-io/
├── haryun-io-blog/     # Source files for the Jekyll blog
│   ├── _config.yml     # Jekyll configuration
│   ├── _posts/         # Blog posts in Markdown
│   ├── Gemfile         # Ruby dependencies
│   └── ...
├── docs/               # Generated static site (served by GitHub Pages)
├── run-build.sh        # Build script
└── CNAME               # Custom domain configuration
```

## 🚀 Getting Started

### Prerequisites

- Ruby (3.0 or higher recommended)
- Bundler (`gem install bundler`)

### Initial Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/haryunio/haryun-io.git
   cd haryun-io
   ```

2. Install dependencies:
   ```bash
   cd haryun-io-blog
   bundle install
   ```

## Editing the Blog

### Creating a New Post

1. Create a new file in the appropriate subdirectory of `haryun-io-blog/_posts/`:
   - **Articles**: `_posts/articles/YYYY-MM-DD-post-title.md`
   - **Portfolio**: `_posts/portfolio/YYYY-MM-DD-post-title.md`

   Example:
   ```
   _posts/articles/2024-12-10-my-new-article.md
   ```

2. Add the front matter at the top of your post:
   ```yaml
   ---
   layout: post
   title: "Your Post Title"
   tags: [Article, Blockchain, Tutorial]  # or [Portfolio, Web3, DeFi]
   featured_image_thumbnail:
   featured_image:
   featured: false
   hidden: false
   ---
   ```

3. Write your content in Markdown. **Important**: Add `<!--more-->` after your first paragraph to create a preview excerpt on the home page:
   ```markdown
   ---
   layout: post
   title: "My Article"
   tags: [Article]
   ---
   
   This is the preview text that will show on the home page.
   
   <!--more-->
   
   This is the rest of your article content...
   ```

### Editing Site Configuration

Edit `haryun-io-blog/_config.yml` to update:
- Site title and description
- Email and social media links
- Theme settings
- Other site-wide configurations

**Note:** After changing `_config.yml`, you must restart the Jekyll server.

### Editing About Page

Edit `haryun-io-blog/about.markdown` to update your about page.

## 🔨 Building the Site

### Method 1: Using the Build Script (Recommended)

From the repository root:
```bash
./run-build.sh
```

This script will:
1. Navigate to `haryun-io-blog/`
2. Build the Jekyll site using `bundle exec jekyll build`
3. Copy the generated site from `_site/` to `../docs/`

### Method 2: Manual Build

```bash
cd haryun-io-blog
bundle exec jekyll build
cp -r _site/* ../docs/
```

## 👀 Local Development

### Start the Jekyll Development Server

```bash
cd haryun-io-blog
bundle exec jekyll serve
```

This will:
- Build the site
- Start a local server at `http://localhost:4000`
- Auto-regenerate pages when you make changes (except `_config.yml`)

### With Live Reload

```bash
bundle exec jekyll serve --livereload
```

## 📤 Deploying Changes

1. Make your edits in the `haryun-io-blog/` directory
2. Build the site using `./run-build.sh`
3. Commit and push changes:
   ```bash
   git add .
   git commit -m "Your commit message"
   git push origin main
   ```

GitHub Pages will automatically serve the updated site from the `docs/` directory.

## 🛠️ Maintenance

### Updating Dependencies

```bash
cd haryun-io-blog
bundle update
```

### Checking Current Versions

```bash
cd haryun-io-blog
bundle exec jekyll --version
```

Current version: **Jekyll 4.4.1**

### Adding New Gems/Plugins

1. Add the gem to `haryun-io-blog/Gemfile`
2. Add the plugin to `_config.yml` under `plugins:` (if applicable)
3. Run `bundle install`

## 📝 Useful Jekyll Commands

- `bundle exec jekyll serve` - Start development server
- `bundle exec jekyll build` - Build the site
- `bundle exec jekyll clean` - Remove generated files
- `bundle exec jekyll serve --drafts` - Include draft posts in preview

## 🔗 Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Markdown Guide](https://www.markdownguide.org/)
- [Minima Theme](https://github.com/jekyll/minima) (Current theme)

## 📧 Contact

Website: https://haryun.io  
Email: me@haryun.io