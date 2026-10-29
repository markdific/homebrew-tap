# Markdific Homebrew tap

Install [Markdific](https://markdific.com/), a Markdown viewer and editor for Mac, with Homebrew:

```bash
brew trust markdific/tap
brew install --cask markdific/tap/markdific
```

Homebrew asks you to trust a tap once before it installs from it.

Reading .md files is free. Editing, saving and export come with a 14-day trial, then a one-time license for up to 3 devices. Requires macOS 11 or later, Apple silicon or Intel.

Markdific updates itself. To update through Homebrew instead:

```bash
brew upgrade --cask markdific
```

To remove the app and its settings:

```bash
brew uninstall --cask --zap markdific
```

Questions: hi@markdific.com
