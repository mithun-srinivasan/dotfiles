# 🛠️ My Windows Terminal Setup

A modern PowerShell development environment inspired by Linux terminals.

---

# Installed Software

| Tool | Purpose |
|------|---------|
| 🪟 Windows Terminal | Modern terminal emulator with tabs, panes, themes and GPU acceleration. |
| ⚡ PowerShell 7 | Cross-platform shell with better performance than Windows PowerShell 5.1. |
| ⭐ Starship | Fast, customizable shell prompt showing Git, Python, Node, etc. |
| 🚀 Fastfetch | Displays beautiful system information when opening the terminal. |
| 📂 eza | Modern replacement for `ls` with icons, Git integration and tree view. |
| 📄 bat | Better `cat` with syntax highlighting and Git integration. |
| 📍 zoxide | Smarter `cd` that remembers frequently used folders. |
| 🔍 fzf | Interactive fuzzy finder for files, folders and command history. |
| 🌳 LazyGit | Terminal UI for Git operations. |
| 🎵 cava *(planned)* | Audio spectrum visualizer inside the terminal. |

---

# PowerShell Aliases

| Command | Actually Runs |
|----------|---------------|
| `ls` | `eza --icons` |
| `ll` | `eza -lah --icons` |
| `lt` | `eza --tree --icons` |
| `cat` | `bat` |

---

# Useful Commands

## eza

### List files

```powershell
ls
```

### Long list

```powershell
ll
```

### Tree view

```powershell
lt
```

### Show hidden files

```powershell
ls -a
```

### Sort newest first

```powershell
ls --sort newest
```

### Git status

```powershell
ls --git
```

---

## bat

View a file with syntax highlighting

```powershell
cat Demo.java
```

View line numbers

```powershell
bat Demo.java
```

Show multiple files

```powershell
bat *.java
```

---

## zoxide

Jump to a directory you've visited before

```powershell
z vscode
```

```powershell
z desktop
```

```powershell
z downloads
```

Add current folder to database

```powershell
zoxide add .
```

List database

```powershell
zoxide query -l
```

---

## fzf

Search command history

```
Ctrl + R
```

Find files

```powershell
fzf
```

Open selected file

```powershell
code (fzf)
```

Find folders

```powershell
Get-ChildItem -Directory | fzf
```

---

## LazyGit

Open Git UI

```powershell
lazygit
```

Useful shortcuts

| Key | Action |
|-----|--------|
| `q` | Quit |
| `Space` | Stage file |
| `c` | Commit |
| `P` | Push |
| `p` | Pull |
| `b` | Branch menu |
| `l` | Log |
| `?` | Help |

---

## Starship

Reload PowerShell profile

```powershell
. $PROFILE
```

Edit profile

```powershell
code $PROFILE
```

Configuration file

```powershell
code ~/.config/starship.toml
```

---

## Fastfetch

Run manually

```powershell
fastfetch
```

Generate config

```powershell
fastfetch --gen-config
```

Edit config

```powershell
code ~/.config/fastfetch/config.jsonc
```

---

# Keyboard Shortcuts

| Shortcut | Purpose |
|-----------|---------|
| `Ctrl + R` | Search command history (fzf) |
| `Ctrl + L` | Clear terminal |
| `Ctrl + C` | Stop current process |
| `Ctrl + Shift + C` | Copy |
| `Ctrl + Shift + V` | Paste |
| `Alt + Shift + D` | Duplicate pane |
| `Shift + Enter` | Send Enter key |

---

# Configuration Files

| File | Location |
|------|----------|
| PowerShell Profile | `Documents/PowerShell/Microsoft.PowerShell_profile.ps1` |
| Windows Terminal | `settings.json` |
| Starship | `~/.config/starship.toml` |
| Fastfetch | `~/.config/fastfetch/config.jsonc` |
| Git | `~/.gitconfig` |

---

# Why I Installed These

✅ Faster navigation

✅ Better file listing

✅ Beautiful terminal

✅ Syntax-highlighted file viewer

✅ Instant directory jumping

✅ Interactive searching

✅ Better Git workflow

✅ Easy to reproduce on a new machine

---

## Future Plans

- [ ] Cava
- [ ] Neovim
- [ ] GlazeWM
- [ ] Zebar
- [ ] Yazi
- [ ] Hyprland (Linux)
