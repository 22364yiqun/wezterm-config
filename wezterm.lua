-- 将本文件及两个平台配置放在同一目录，自动选择当前系统。
local wezterm = require("wezterm")
local platform
if wezterm.target_triple:find("windows", 1, true) then
  platform = "windows"
elseif wezterm.target_triple:find("linux", 1, true) then
  platform = "linux"
else
  error("This configuration supports Windows and Linux only: " .. wezterm.target_triple)
end
return dofile(wezterm.config_dir .. "/wezterm-" .. platform .. ".lua")
