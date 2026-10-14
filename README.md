# WezTerm config

Windows and Linux configurations with Catppuccin Mocha colors, JetBrains Mono,
a compact tab bar, system window controls, and 10,000 lines of scrollback.
Inspired by [KevinSilvester/wezterm-config](https://github.com/KevinSilvester/wezterm-config).

## Files

| File | Platform | Shell and fonts |
| --- | --- | --- |
| `wezterm-windows.lua` | Windows | Windows PowerShell; JetBrains Mono with Consolas fallback |
| `wezterm-linux.lua` | Linux | `$SHELL -l`, falling back to `/bin/bash -l`; JetBrains Mono with Noto Chinese and Emoji fallback |
| `wezterm.lua` | Auto-detect | Loads the matching platform file from the same directory |

Both platform files are standalone: copy just the matching file to `.wezterm.lua`.
Back up any existing configuration before replacing it.

## Install on Windows

1. Install [WezTerm](https://wezterm.org/installation.html).
2. Optionally install JetBrains Mono; Consolas is the fallback.
3. From this repository directory, run PowerShell:

   ```powershell
   if (Test-Path "$env:USERPROFILE\.wezterm.lua") {
     Copy-Item "$env:USERPROFILE\.wezterm.lua" "$env:USERPROFILE\.wezterm.lua.backup-$(Get-Date -Format yyyyMMdd-HHmmss)"
   }
   Copy-Item .\wezterm-windows.lua "$env:USERPROFILE\.wezterm.lua"
   ```

## Install on Linux

1. Install [WezTerm](https://wezterm.org/install/linux.html).
2. On Ubuntu/Debian, install the fonts:

   ```bash
   sudo apt install fonts-jetbrains-mono fonts-noto-cjk fonts-noto-color-emoji
   ```

3. From this repository directory, install the standalone Linux configuration:

   ```bash
   if [ -e "$HOME/.wezterm.lua" ]; then
     cp "$HOME/.wezterm.lua" "$HOME/.wezterm.lua.backup-$(date +%Y%m%d-%H%M%S)"
   fi
   cp wezterm-linux.lua "$HOME/.wezterm.lua"
   ```

The Linux configuration uses your current `$SHELL`, so no zsh installation is required.

## Automatic platform selection (optional)

Instead of the standalone installation above, copy **all three Lua files** into
`~/.config/wezterm/` on Linux, or `%USERPROFILE%\.config\wezterm\` on Windows.
Keep their filenames unchanged. `wezterm.lua` selects the platform automatically.
Move an existing `~/.wezterm.lua` / `%USERPROFILE%\.wezterm.lua` aside after backing
it up, because that file takes precedence over the configuration directory.

## Key bindings

The original shortcuts are retained on both platforms.

| Keys | Action |
| --- | --- |
| `Alt+D` | Split left/right |
| `Alt+Shift+D` | Split top/bottom |
| `Ctrl+Shift+T` | New tab |
| `Alt+Left` / `Alt+Right` | Move between panes |
| `Ctrl+Shift+W` | Close current pane, with confirmation |

Other WezTerm shortcuts keep their defaults. See the
[default key assignments](https://wezterm.org/config/default-keys.html).
Configuration reloads automatically; press `Ctrl+Shift+R` to reload manually.

## Reference

- [WezTerm configuration file locations](https://wezterm.org/config/files.html)
- [KevinSilvester/wezterm-config](https://github.com/KevinSilvester/wezterm-config)
