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

### Local Testing

```bash
cd haryun-io-blog
bundle exec jekyll build
```

Or use the build script:
```bash
./run-build.sh
```

### Production Deployment

**This blog uses GitHub Actions for automatic deployment!**

No manual building needed. When you push to the `main` branch, GitHub Actions will:
1. Automatically build your Jekyll site
2. Deploy it to GitHub Pages
3. Make it live at your custom domain

See [Deploying Changes](#-deploying-changes) below for details.

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

### Automatic Deployment with GitHub Actions

1. Make your edits in the `haryun-io-blog/` directory
2. Commit and push changes:
   ```bash
   git add .
   git commit -m "Your commit message"
   git push origin main
   ```
3. GitHub Actions will automatically:
   - Build your Jekyll site
   - Deploy to GitHub Pages
   - Your site will be live in 1-2 minutes!

### First-Time Setup

**One-time configuration in your GitHub repository:**

1. Go to your repository on GitHub
2. Navigate to **Settings** → **Pages**
3. Under "Build and deployment":
   - **Source**: Select "GitHub Actions"
4. Under **Custom domain** (if using haryun.io):
   - Enter your domain: `haryun.io`
   - Wait for DNS check to complete
5. Enable "Enforce HTTPS"

**DNS Configuration** (if using custom domain):

Add these records to your DNS provider:
```
Type: A
Name: @
Value: 185.199.108.153
Value: 185.199.109.153
Value: 185.199.110.153
Value: 185.199.111.153

Type: CNAME
Name: www
Value: haryunio.github.io
```

### Monitoring Deployments

- View deployment status: **Actions** tab in your GitHub repository
- Each push triggers a new workflow
- Green checkmark = successful deployment
- Red X = build failed (check logs for errors)

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