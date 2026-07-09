# 🛠️ My Windows Terminal Setup

A modern, Linux-inspired PowerShell development environment built for programming, Git, and productivity.

---

# ✨ Installed Software

| Tool | Purpose |
|------|---------|
| 🪟 Windows Terminal | Modern terminal with tabs, panes, GPU acceleration and customization. |
| ⚡ PowerShell 7 | Fast, cross-platform shell replacing Windows PowerShell 5.1. |
| ⭐ Starship | Minimal, blazing-fast prompt with Git, Python, Node.js and more. |
| 🚀 Fastfetch | Beautiful system information displayed whenever the terminal opens. |
| 📂 eza | Modern replacement for `ls` with icons, Git status and tree view. |
| 📄 bat | Better `cat` with syntax highlighting, paging and Git integration. |
| 📍 zoxide | Smart replacement for `cd` that learns frequently visited folders. |
| 🔍 fzf | Interactive fuzzy finder for files, folders, history and commands. |
| 🦀 ripgrep (`rg`) | Extremely fast recursive text search across projects. |
| 📁 fd | Simple and lightning-fast alternative to `find`. |
| 📋 jq | Powerful JSON parser and formatter. |
| 📑 poppler | PDF utilities (`pdfinfo`, `pdftotext`, `pdfimages`, etc.). |
| 🎬 FFmpeg | Swiss-army knife for video, audio and media conversion. |
| 📦 7-Zip | File compression and extraction utilities. |
| 🔎 file | Detects the real file type instead of relying on file extensions. |
| 📝 Neovim | Modern Vim-based editor for coding inside the terminal. |
| 📁 Yazi | Fast terminal file manager written in Rust. |
| 🎨 Delta | Beautiful syntax-highlighted Git diffs. |
| 🌳 LazyGit *(planned)* | Terminal UI for Git workflows. |
| 🎵 Cava *(planned)* | Audio spectrum visualizer for the terminal. |

---

# 🚀 PowerShell Aliases

| Command | Runs |
|----------|------|
| `ls` | `eza --icons` |
| `ll` | `eza -lah --icons` |
| `lt` | `eza --tree --icons` |
| `cat` | `bat` |
| `z` | Smart directory jumping (zoxide) |
| `y` | Launch Yazi file manager |

---

# 📂 File Navigation

## eza

List files

```powershell
ls
```

Detailed list

```powershell
ll
```

Tree view

```powershell
lt
```

Hidden files

```powershell
ls -a
```

Git status

```powershell
ls --git
```

Newest files

```powershell
ls --sort newest
```

---

## bat

View a file

```powershell
cat Demo.java
```

View multiple files

```powershell
bat *.java
```

Theme list

```powershell
bat --list-themes
```

---

## zoxide

Jump instantly

```powershell
z vscode
```

```powershell
z desktop
```

```powershell
z downloads
```

Show learned folders

```powershell
zoxide query -l
```

---

# 🔍 Searching

## fzf

Search command history

```
Ctrl + R
```

Search files

```powershell
fzf
```

Search folders

```powershell
Get-ChildItem -Directory | fzf
```

Open selected file

```powershell
code (fzf)
```

---

## ripgrep

Search text inside an entire project

```powershell
rg "main"
```

Search only Java files

```powershell
rg "Scanner" *.java
```

Ignore case

```powershell
rg -i hello
```

---

## fd

Find files

```powershell
fd Demo
```

Find Java files

```powershell
fd .java
```

Find directories

```powershell
fd --type d
```

---

# 📁 Yazi

Launch

```powershell
y
```

Common Keys

| Key | Action |
|------|--------|
| Enter | Open |
| Backspace | Go back |
| h | Parent folder |
| l | Open folder |
| Space | Select |
| q | Quit |

---

# 📝 Neovim

Open editor

```powershell
nvim
```

Open a file

```powershell
nvim Demo.java
```

Quit

```
:q
```

Save

```
:w
```

Save & Quit

```
:wq
```

Force Quit

```
:q!
```

---

# 🌳 Git

Status

```powershell
git status
```

Beautiful diff

```powershell
git diff | delta
```

Launch LazyGit *(when installed)*

```powershell
lazygit
```

---

# 📄 JSON

Pretty-print JSON

```powershell
cat package.json | jq
```

---

# 📑 PDF Tools

Extract text

```powershell
pdftotext file.pdf
```

PDF information

```powershell
pdfinfo file.pdf
```

---

# 🎬 FFmpeg

Convert video

```powershell
ffmpeg -i input.mp4 output.mkv
```

Extract audio

```powershell
ffmpeg -i input.mp4 audio.mp3
```

---

# 📦 7-Zip

Extract archive

```powershell
7z x archive.zip
```

Create archive

```powershell
7z a backup.zip folder
```

---

# 🔎 File Type

Detect actual file type

```powershell
file image.png
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

Edit Starship

```powershell
code ~/.config/starship.toml
```

Edit Fastfetch

```powershell
code ~/.config/fastfetch/config.jsonc
```

---

# ⌨️ Keyboard Shortcuts

| Shortcut | Purpose |
|-----------|---------|
| Ctrl + R | Fuzzy search command history |
| Ctrl + L | Clear terminal |
| Ctrl + C | Stop running process |
| Ctrl + Shift + C | Copy |
| Ctrl + Shift + V | Paste |
| Alt + Shift + D | Duplicate pane |
| Ctrl + Shift + P | Windows Terminal command palette |

---

# 📁 Dotfiles

| File | Location |
|------|----------|
| PowerShell Profile | `Documents/PowerShell/Microsoft.PowerShell_profile.ps1` |
| Windows Terminal | `settings.json` |
| Starship | `~/.config/starship.toml` |
| Fastfetch | `~/.config/fastfetch/config.jsonc` |
| Git | `~/.gitconfig` |

---

# 💡 Why This Setup?

- 🚀 Faster terminal workflow
- 📂 Better file navigation
- 🔍 Instant project-wide searching
- 📄 Syntax-highlighted file viewing
- 📁 Smart directory jumping
- ⚡ Terminal-based file manager
- 📝 Powerful terminal text editor
- 🌳 Better Git experience
- 🎨 Beautiful prompt and terminal UI
- 🔄 Easy to reproduce using dotfiles

---

# 📦 Planned Additions

- [ ] LazyGit
- [ ] Cava
- [ ] Hyprland (Linux)
