# Contributing to Ivan Deyna's Blog

Thank you for your interest in contributing to my blog! I welcome contributions that help improve content, fix issues, or enhance the site's functionality.

## 🚀 How to Contribute

### 1. Create an Issue First

Before making any changes, please create an issue to discuss:
- Bug reports
- Feature requests
- Content suggestions
- Technical improvements

### 2. Branch Naming Convention

Create a branch with the issue number:
```bash
git checkout -b 123
```

Where `123` is the issue number you want to address.

### 3. Development Setup

```bash
# Fork and clone the repository
git clone https://github.com/YOUR_USERNAME/blog.git
cd blog

# Install dependencies
git submodule update --init --recursive

# Create your branch
git checkout -b 123

# Start development server
hugo server -D
```

### 4. Making Changes

#### For Content:
- Posts go in `content/posts/`
- Use proper markdown formatting
- Include front matter (title, date, tags, etc.)
- Check for typos and grammar

#### For Code:
- Follow existing code style
- Test changes locally
- Ensure site builds without errors
- Keep commits focused and descriptive

### 5. Pull Request Process

1. **Push your branch** to your fork
2. **Create a Pull Request** with сlear title referencing the issue: "Fix issue #123"
3. **Wait for review** - I'll review and provide feedback
4. **Address feedback** if needed
5. **Merge** - After approval, your changes will be merged

## 🐛 Bug Reports

Include:
- Clear description of the issue
- Steps to reproduce
- Expected vs actual behavior
- Browser/device info (if relevant)
- Screenshots/recordings (if helpful)

## 💡 Feature Requests

Describe:
- What feature you'd like to see
- Why it would be useful
- How it might work
- Any examples from other sites

## ⚡ Quick Fixes

For small fixes (typos, broken links), you can:
1. Create an issue
2. Make the fix in your fork
3. Submit a PR referencing the issue

## 📞 Questions?

Feel free to reach out:
- Create an issue for discussion
- Contact me on [Telegram](https://t.me/literally_bug_creator)

## 🙏 Recognition

All contributors will be acknowledged in release notes and appreciated for their help!

---

Thank you for helping make this blog better! 🚀
