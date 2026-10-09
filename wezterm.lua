
local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

-- 默认使用 PowerShell
config.default_prog = { "powershell.exe", "-NoLogo" }

-- 字体：需要先安装 JetBrains Mono
config.font = wezterm.font_with_fallback({
  "JetBrains Mono",
  "Consolas",
})
config.font_size = 12.5
config.line_height = 1.15

-- 深色主题
config.color_scheme = "Catppuccin Mocha"

-- 窗口外观
config.window_background_opacity = 1.0
-- 独立的系统标题栏：显示最小化、最大化、关闭按钮
config.window_decorations = "TITLE|RESIZE"
config.window_padding = {
  left = 14,
  right = 14,
  top = 12,
  bottom = 10,
}

-- 标签页
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.tab_max_width = 24
config.colors = {
  tab_bar = {
    background = "#11111b",
    active_tab = { bg_color = "#cba6f7", fg_color = "#11111b", intensity = "Bold" },
    inactive_tab = { bg_color = "#1e1e2e", fg_color = "#a6adc8" },
    inactive_tab_hover = { bg_color = "#313244", fg_color = "#cdd6f4" },
    new_tab = { bg_color = "#181825", fg_color = "#a6adc8" },
    new_tab_hover = { bg_color = "#313244", fg_color = "#cdd6f4" },
  },
}

-- 窗口大小
config.initial_cols = 90
config.initial_rows = 24

-- 滚动历史：方便查看 Codex 输出
config.scrollback_lines = 10000

-- SSH / Linux 兼容性
config.term = "xterm-256color"

-- 快捷键
config.keys = {
  -- 左右分屏
  {
    key = "d",
    mods = "ALT",
    action = act.SplitHorizontal({
      domain = "CurrentPaneDomain",
    }),
  },

  -- 上下分屏
  {
    key = "d",
    mods = "ALT|SHIFT",
    action = act.SplitVertical({
      domain = "CurrentPaneDomain",
    }),
  },

  -- 新建标签页
  {
    key = "t",
    mods = "CTRL|SHIFT",
    action = act.SpawnTab("CurrentPaneDomain"),
  },

  -- 切换分屏
  {
    key = "LeftArrow",
    mods = "ALT",
    action = act.ActivatePaneDirection("Left"),
  },
  {
    key = "RightArrow",
    mods = "ALT",
    action = act.ActivatePaneDirection("Right"),
  },

  -- 关闭当前窗格
  {
    key = "w",
    mods = "CTRL|SHIFT",
    action = act.CloseCurrentPane({
      confirm = true,
    }),
  },
}

return config
