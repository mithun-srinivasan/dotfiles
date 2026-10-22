# 🛠️ My Windows Terminal Setup

> **A modern Linux-inspired Windows development environment** built with **PowerShell 7**, **Scoop**, and a collection of powerful open-source CLI tools.
---

# ✨ Features

- ⚡ Lightning-fast terminal workflow
- 🎨 Beautiful Starship prompt
- 📂 Modern file navigation
- 🔍 Powerful fuzzy searching
- 🌳 Git-first development
- 📝 Terminal-based coding
- 🚀 Easy to reproduce using Scoop & dotfiles

---

# 📦 Installed Software

| Category | Tools |
|-----------|-------|
| 🖥 Terminal | Windows Terminal, PowerShell 7 |
| ✨ Appearance | Starship, Fastfetch, Superfile |
| 📂 Navigation | eza, zoxide, Superfile |
| 🔍 Search | fzf, ripgrep, fd |
| 🌳 Git | Git, Delta, LazyGit |
| 📝 Editor | Neovim |
| 🛠 Utilities | bat, jq, FFmpeg, 7-Zip |

---

# 🚀 PowerShell Aliases

| Alias | Command |
|--------|---------|
| `ls` | `eza --icons` |
| `ll` | `eza -lah --icons` |
| `lt` | `eza --tree --icons` |
| `cat` | `bat --paging=never` |
| `cls` | `Clear-Host` |
| `c` | `code .` |
| `g` | `git` |
| `lg` | `lazygit` |
| `neovim` | `nvim` |
| `z` | zoxide |
| `spf` | superfile |

---

# ⚡ Command Cheat Sheet

<details>
<summary><b>📂 eza (Modern ls)</b></summary>

```powershell
ls
ll
lt
ls -a
ls --git
ls --sort newest
eza -T -L 3
```

</details>

---

<details>
<summary><b>📁 Superfile</b></summary>

Launch

```powershell
spf
```

### Navigation

| Shortcut | Action |
|----------|--------|
| ↑ / ↓ | Move |
| Enter | Open |
| Backspace | Parent directory |
| Home | Home folder |
| End | Last item |

### File Operations

| Shortcut | Action |
|----------|--------|
| Space | Select |
| a | Select all |
| A | Deselect all |
| y | Copy |
| x | Cut |
| p | Paste |
| r | Rename |
| d | Delete |
| n | New file/folder |

### Search

| Shortcut | Action |
|----------|--------|
| / | Search |
| Esc | Cancel search |

### View

| Shortcut | Action |
|----------|--------|
| . | Toggle hidden files |
| Tab | Next panel |
| Shift + Tab | Previous panel |
| F5 | Refresh |

### Misc

| Shortcut | Action |
|----------|--------|
| ? | Help |
| q | Quit |

</details>

---

<details>
<summary><b>📄 bat</b></summary>

```powershell
cat file.txt
bat Demo.java
bat *.java
bat --list-themes
bat --style=numbers
```

</details>

---

<details>
<summary><b>📍 zoxide</b></summary>

```powershell
z desktop
z vscode
z downloads
z documents
zoxide query -l
```

</details>

---

<details>
<summary><b>🔍 fzf</b></summary>

Search files

```powershell
fzf
```

Search history

```
Ctrl + R
```

Search folders

```powershell
Get-ChildItem -Directory | fzf
```

Open selected file

```powershell
code (fzf)
```

</details>

---

<details>
<summary><b>🦀 ripgrep</b></summary>

```powershell
rg "main"
rg -i hello
rg "Scanner" *.java
rg TODO
```

</details>

---

<details>
<summary><b>📁 fd</b></summary>

```powershell
fd Demo
fd .java
fd --type d
fd --hidden
```

</details>

---

<details>
<summary><b>🌳 Git</b></summary>

```powershell
git status
git add .
git commit -m "message"
git push
git pull
git diff
lazygit
```

Delta is configured as the default Git pager.

</details>

---

<details>
<summary><b>📝 Neovim</b></summary>

Launch

```powershell
nvim
```

Open file

```powershell
nvim Demo.java
```

### Basic Commands

```
:w
:q
:wq
:q!
:x
```

### Navigation

```
h j k l
gg
G
0
$
```

### Editing

```
i
a
o
dd
yy
p
u
Ctrl+r
```

### Search

```
/text
n
N
```

</details>

---

<details>
<summary><b>⚙️ Configuration</b></summary>

Reload profile

```powershell
. $PROFILE
```

PowerShell profile

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

Git

```powershell
code ~/.gitconfig
```

Windows Terminal

```powershell
wt settings
```

</details>

---

<details>
<summary><b>⚡ Fastfetch</b></summary>

```powershell
fastfetch
```

Displays system information with a Catppuccin Mocha theme.

The logo is fastfetch's built-in `Windows 11_small`. Fastfetch cannot ship the
Microsoft trademark, so that entry is a text placeholder. If you want a real
Windows 11 mark instead, `Fastfetch/windows-logo.ans` in this repo is a ready-made
four-pane one — copy it to `~/.config/fastfetch/windows-logo.ans` and switch the
`logo` block to:

```json
"logo": {
  "type": "file-raw",
  "source": "%USERPROFILE%/.config/fastfetch/windows-logo.ans",
  "padding": { "top": 0, "bottom": 0, "left": 0, "right": 3 }
}
```

> Note: fastfetch **silently** falls back to its built-in placeholder art if the logo
> file cannot be found, and it does not resolve relative paths against the config
> directory — `%USERPROFILE%` expansion is the reliable form.

</details>

---

# ⌨️ Keyboard Shortcuts

| Shortcut | Action |
|-----------|--------|
| Ctrl + R | Fuzzy search command history |
| Ctrl + L | Clear terminal |
| Ctrl + C | Stop running process |
| Ctrl + Shift + C | Copy |
| Ctrl + Shift + V | Paste |
| Ctrl + Shift + A | Select all |
| Ctrl + Shift + F | Find text |
| Ctrl + Shift + T | New terminal tab |
| Ctrl + Shift + W | Close tab |
| Ctrl + Shift + D | Duplicate tab |
| Ctrl + Shift + Space | New tab dropdown |
| Ctrl + Shift + P | Command Palette |
| Alt + Shift + D | Split pane |
| Ctrl + Tab | Next tab |
| Ctrl + Shift + Tab | Previous tab |
| Ctrl + Alt + 1…8 | Jump to tab by index |
| Shift + Enter | Send Shift+Enter (kitty protocol) |
| F11 | Toggle fullscreen |

> **Note:** the keybindings in `WindowsTerminal/settings.json` rely on Windows Terminal
> **1.24+** and the root `actions` array. Older builds only understand inline
> `{"id": "...", "keys": "..."}` pairs, and an unknown `id` silently overrides the
> built-in binding — that is what breaks `Ctrl+Tab` on older setups.

---

# 📁 Configuration Files

| File | Location |
|------|----------|
| PowerShell Profile | `Documents/PowerShell/Microsoft.PowerShell_profile.ps1` |
| Windows Terminal | `settings.json` |
| Starship | `~/.config/starship.toml` |
| Fastfetch | `~/.config/fastfetch/config.jsonc` |
| Fastfetch logo (optional) | `~/.config/fastfetch/windows-logo.ans` |
| Git | `~/.gitconfig` |

> **Windows Terminal:** `settings.json` holds a *reference* configuration. Merge it into
> your own (`%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`)
> rather than overwriting it, so your existing profiles survive.

---

# 📦 Installation

```powershell
# Terminal + shell
winget install Microsoft.PowerShell
winget install Microsoft.WindowsTerminal

# Scoop buckets (lazygit lives in "extras")
scoop bucket add extras

# Core tooling
scoop install `
git git-lfs `
eza bat starship fastfetch `
zoxide fzf fd ripgrep `
jq lazygit `
superfile neovim `
ffmpeg 7zip

# delta is not published in any Scoop bucket - use winget
winget install dandavison.delta
```

---

# 📸 Preview

> *(Add screenshots here)*

```
Windows Terminal
├── Starship Prompt
├── Fastfetch
├── Superfile
└── Neovim
```

---

# 🎯 Why This Setup?

- 🚀 Faster than stock PowerShell
- 📂 Modern file management
- 🔍 Powerful searching
- 🌳 Better Git workflow
- 📝 Terminal-first coding
- 🎨 Beautiful interface
- 💻 Linux-like experience on Windows
- 🔄 Easily reproducible with Scoop and dotfiles

---

# 🚀 Roadmap

- [x] Windows Terminal
- [x] PowerShell 7
- [x] Starship
- [x] Fastfetch
- [x] Superfile
- [x] Neovim
- [x] LazyGit
- [ ] Tmux
- [ ] Arch Linux
- [ ] Hyprland
- [ ] Personal Dotfiles Repository

---

<p align="center">

⭐ If you like this setup, feel free to use it as inspiration for your own terminal!

</p>
