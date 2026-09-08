-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Standard-Editor auf SUPER + Right-Shift
o.bind("SUPER + SHIFT_R", "Editor", { omarchy = "editor" })

-- Agent vereinfacht: war SUPER + SHIFT + CTRL + A, jetzt SUPER + A
hl.unbind("SUPER + SHIFT + CTRL + A")
o.bind("SUPER + A", "Agent", "omarchy-agent --pick")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- omalang:binds begin (managed by Omalang — do not edit)
pcall(require, "hypr.omalang_binds")
-- omalang:binds end

-- omalang:binds begin (managed by Omalang — do not edit)
pcall(require, "hypr.omalang_binds")
-- omalang:binds end
