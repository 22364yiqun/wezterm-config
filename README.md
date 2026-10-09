# WezTerm config

My Windows WezTerm setup, exported from the configuration I use every day. The layout is deliberately a single Lua file so it is easy to install and change.

Inspired by [KevinSilvester/wezterm-config](https://github.com/KevinSilvester/wezterm-config). This repository contains my own settings rather than a copy of that project.

## Features

- PowerShell as the default shell
- Catppuccin Mocha colors and a compact tab bar
- JetBrains Mono with Consolas fallback
- Window title bar and resize controls
- 10,000 lines of scrollback
- Keyboard shortcuts for tabs and panes

## Install on Windows

1. Install [WezTerm](https://wezterm.org/installation.html).
2. Optionally install JetBrains Mono. Consolas is used if the font is unavailable.
3. Copy `wezterm.lua` to `%USERPROFILE%\.wezterm.lua`:

   ```powershell
   Copy-Item .\wezterm.lua "$env:USERPROFILE\.wezterm.lua"
   ```

WezTerm loads this file automatically. If it is already open, press `Ctrl+Shift+R` to reload the configuration. Back up an existing `.wezterm.lua` before replacing it.

## Key bindings

| Keys | Action |
| --- | --- |
| `Alt+D` | Split left/right |
| `Alt+Shift+D` | Split top/bottom |
| `Ctrl+Shift+T` | New tab |
| `Alt+Left` / `Alt+Right` | Move between panes |
| `Ctrl+Shift+W` | Close current pane, with confirmation |

Other WezTerm shortcuts keep their defaults. See the [default key assignments](https://wezterm.org/config/default-keys.html).

## Launch shortcut on Windows

`Ctrl+Alt+W` launches WezTerm on my PC. This is a **Windows shortcut setting**, not a WezTerm Lua setting, so it is not included in `wezterm.lua`.

To set it yourself, create a shortcut to `wezterm-gui.exe` in your Start menu, open its **Properties**, and set **Shortcut key** to `Ctrl+Alt+W`.

## Reference

- [WezTerm configuration file locations and reload behavior](https://wezterm.org/config/files.html)
- [KevinSilvester/wezterm-config](https://github.com/KevinSilvester/wezterm-config)
