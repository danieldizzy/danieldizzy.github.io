# Local Development Guide for danieldizzy.github.io

## 🚀 Quick Start

Your Jekyll blog is now set up for local development! Here's everything you need to know.

## 📁 Project Structure

```
danieldizzy.github.io/
├── _config.yml          # Site configuration
├── _posts/              # Blog posts (YYYY-MM-DD-title.md)
├── _layouts/            # Page templates
├── _templates/          # Blog post templates
├── Gemfile              # Ruby dependencies
├── new-post.sh          # Script to create new posts
└── LOCAL_DEVELOPMENT_GUIDE.md
```

## 🛠️ Development Workflow

### 1. Start Local Server
```bash
cd danieldizzy.github.io
bundle exec jekyll serve
```
Your site will be available at: http://localhost:4000

### 2. Create a New Blog Post
```bash
./new-post.sh "Your Amazing Post Title"
```
This will:
- Create a new file in `_posts/` with proper naming
- Use the correct date format for Jekyll
- Pre-fill the front matter template

### 3. Edit Your Post
- Open the created file in VS Code
- Write your content in Markdown
- Save and see live changes at http://localhost:4000

### 4. Publish to GitHub Pages
```bash
git add .
git commit -m "Add new post: Your Post Title"
git push origin master
```

## 📝 Blog Post Front Matter Template

Every blog post should start with:

```yaml
---
layout: post
title: "Your Post Title"
date: 2025-05-28 12:00:00 +0900
author: Daniel Dizzy
categories: [cybersecurity, tutorial, analysis, personal]
tags: [security, pentesting, compliance, wireless]
---
```

## 🎯 Content Categories & Tags

### Categories (choose 1-2):
- `cybersecurity` - Security-related content
- `tutorial` - How-to guides and tutorials
- `analysis` - Industry analysis and insights
- `personal` - Personal updates and thoughts

### Common Tags:
- `security`, `pentesting`, `compliance`, `wireless`
- `tools`, `methodology`, `research`
- `career`, `learning`, `certification`

## 🔧 Useful Commands

### Development
```bash
# Start server with live reload
bundle exec jekyll serve

# Start server accessible from other devices
bundle exec jekyll serve --host 0.0.0.0

# Build site without serving
bundle exec jekyll build

# Update dependencies
bundle update
```

### Git Workflow
```bash
# Check status
git status

# Add all changes
git add .

# Commit with message
git commit -m "Your commit message"

# Push to GitHub
git push origin master

# Pull latest changes
git pull origin master
```

## 📱 VS Code Extensions (Recommended)

Install these extensions for better Markdown editing:
- Markdown All in One
- Markdown Preview Enhanced
- Jekyll Snippets
- YAML

## 🎨 Writing Tips

### Markdown Syntax
```markdown
# H1 Header
## H2 Header
### H3 Header

**Bold text**
*Italic text*
`Inline code`

```bash
# Code block
echo "Hello World"
```

[Link text](https://example.com)

![Image alt text](path/to/image.jpg)

- Bullet point
- Another point

1. Numbered list
2. Second item
```

### Code Highlighting
Supported languages: `bash`, `python`, `javascript`, `yaml`, `json`, `html`, `css`, `sql`

## 🚨 Common Issues & Solutions

### Issue: "Layout 'post' does not exist"
**Solution:** Make sure you have a `_layouts/post.html` file or use `layout: default`

### Issue: Post not showing up
**Solution:** Check the date format in front matter: `YYYY-MM-DD HH:MM:SS +0900`

### Issue: Server won't start
**Solution:** 
```bash
bundle install
bundle exec jekyll serve
```

### Issue: Changes not reflecting
**Solution:** Hard refresh browser (Ctrl+F5 / Cmd+Shift+R)

## 📊 Performance Tips

1. **Optimize images** before adding them
2. **Use descriptive filenames** for SEO
3. **Add alt text** to all images
4. **Use proper heading hierarchy** (H1 → H2 → H3)
5. **Include meta descriptions** in front matter

## 🔗 Useful Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Liquid Template Language](https://shopify.github.io/liquid/)

## 🎯 Next Steps

1. **Customize your theme** by editing `_layouts/` files
2. **Add an About page** with your professional background
3. **Set up Google Analytics** for visitor tracking
4. **Add social media links** to your site
5. **Create a contact form** for reader engagement

---

Happy blogging! 🚀
