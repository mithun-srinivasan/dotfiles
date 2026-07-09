# 🛠️ My Windows Terminal Setup

> A modern, Linux-inspired Windows development environment built with PowerShell 7, Scoop, and open-source CLI tools.

---

# ✨ Overview

This setup transforms Windows into a fast, keyboard-driven development environment focused on:

- ⚡ Productivity
- 💻 Programming
- 🌳 Git workflows
- 📂 File management
- 🔍 Searching
- 🎨 Beautiful terminal UI

---

# 📦 Core Environment

| Tool | Purpose |
|------|---------|
| 🪟 Windows Terminal | Modern terminal emulator with tabs, panes, GPU acceleration and themes |
| ⚡ PowerShell 7 | Cross-platform shell |
| ⭐ Starship | Fast customizable shell prompt |
| 🚀 Fastfetch | System information on startup |

---

# 📂 Navigation & File Management

| Tool | Purpose |
|------|---------|
| 📂 eza | Modern replacement for `ls` |
| 📄 bat | Syntax-highlighted file viewer |
| 📍 zoxide | Smart directory jumper |
| 📁 Superfile | Terminal file manager with previews |

---

# 🔍 Searching

| Tool | Purpose |
|------|---------|
| 🔎 fzf | Fuzzy finder |
| 🦀 ripgrep (`rg`) | Ultra-fast text search |
| 📁 fd | Fast file finder |

---

# 🌳 Git

| Tool | Purpose |
|------|---------|
| Git | Version control |
| 🌿 LazyGit | Terminal Git UI |
| 🎨 Delta | Syntax-highlighted Git diffs |

---

# 🛠 Utilities

| Tool | Purpose |
|------|---------|
| 📋 jq | JSON processor |
| 🎬 FFmpeg | Audio/video toolkit |
| 📦 7-Zip | Compression utility |

---

# 📝 Editor

| Tool | Purpose |
|------|---------|
| 📝 Neovim | Terminal-based code editor |

---

# 🚀 Aliases

| Alias | Command |
|------|---------|
| `ls` | `eza --icons` |
| `ll` | `eza -lah --icons` |
| `lt` | `eza --tree --icons` |
| `cat` | `bat` |
| `z` | zoxide |
| `spf` | Superfile |

---

# 📂 File Navigation

## eza

```powershell
ls
ll
lt
ls -a
ls --git
ls --sort newest
```

---

## Superfile

Launch

```powershell
spf
```

Useful Keys

| Key | Action |
|------|--------|
| Enter | Open |
| Backspace | Parent folder |
| Space | Select |
| y | Copy |
| x | Cut |
| p | Paste |
| r | Rename |
| d | Delete |
| / | Search |
| . | Toggle hidden files |
| q | Quit |

---

## bat

```powershell
cat file.txt
bat *.java
bat --list-themes
```

---

## zoxide

```powershell
z vscode
z downloads
z desktop
zoxide query -l
```

---

# 🔍 Searching

## ripgrep

```powershell
rg "main"
rg -i hello
rg "Scanner" *.java
```

## fd

```powershell
fd Demo
fd --type d
fd .java
```

## fzf

```powershell
fzf
Ctrl + R
Get-ChildItem -Directory | fzf
```

---

# 🌳 Git

```powershell
git status
git diff
lazygit
```

Delta is automatically used as the Git pager.

---

# 📝 Neovim

```powershell
nvim
nvim Demo.java
```

Basic commands

```
:w
:q
:wq
:q!
```

---

# ⚙️ Configuration

Reload profile

```powershell
. $PROFILE
```

Edit PowerShell profile

```powershell
code $PROFILE
```

Starship

```powershell
code ~/.config/starship.toml
```

Fastfetch

```powershell
code ~/.config/fastfetch/config.jsonc
```

---

# ⌨️ Keyboard Shortcuts

| Shortcut | Action |
|-----------|--------|
| Ctrl + R | Search history |
| Ctrl + L | Clear terminal |
| Ctrl + C | Stop process |
| Ctrl + Shift + C | Copy |
| Ctrl + Shift + V | Paste |
| Ctrl + Shift + P | Windows Terminal Command Palette |

---

# 📁 Configuration Files

| File | Purpose |
|------|---------|
| PowerShell Profile | `Documents/PowerShell/Microsoft.PowerShell_profile.ps1` |
| Windows Terminal | `settings.json` |
| Starship | `~/.config/starship.toml` |
| Fastfetch | `~/.config/fastfetch/config.jsonc` |
| Git | `~/.gitconfig` |

---

# 📦 Installation

```powershell
winget install Microsoft.PowerShell
winget install Microsoft.WindowsTerminal

scoop install `
eza bat starship fastfetch `
zoxide fzf fd ripgrep jq `
git delta lazygit `
superfile neovim `
ffmpeg 7zip
```

---

# 💡 Why This Setup?

- ⚡ Fast keyboard-driven workflow
- 📂 Better file navigation
- 🔍 Powerful project-wide searching
- 🌳 Efficient Git workflow
- 📝 Terminal-first development
- 🎨 Clean and modern terminal interface
- 🔄 Easy to reproduce with dotfiles

---

# 🚀 Future Plans

- [ ] Hyprland
- [ ] Arch Linux
- [ ] Tmux
- [ ] Custom Neovim configuration
- [ ] Personal dotfiles repository
