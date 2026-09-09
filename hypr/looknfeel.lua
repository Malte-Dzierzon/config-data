-- Omarchy / Hyprland global look & feel
--
-- This file contains global behavior that should remain consistent
-- across all themes.
--
-- Theme-specific visual styling belongs in the active theme:
--   ~/.config/omarchy/themes/<theme>/hyprland.lua

hl.config({
  general = {
    -- Keep the default Omarchy spacing and geometry behavior simple.
    gaps_in = 4,
    gaps_out = 6,
    border_size = 1,
  },

  decoration = {
    -- Base behavior only.
    -- Themes may override these values.
    rounding = 0,

    shadow = {
      enabled = false,
    },

    blur = {
      enabled = true,
      size = 5,
      passes = 2,
      new_optimizations = true,

      -- Allow popup surfaces to participate in blur.
      popups = true,
    },

    -- Subtle focus dimming.
    dim_inactive = true,
    dim_strength = 0.10,
  },

  animations = {
    enabled = true,
  },
})


-- ------------------------------------------------------------
-- Global animation curves
-- ------------------------------------------------------------

hl.curve("omarchyEase", {
  type = "bezier",
  points = {
    { 0.22, 1 },
    { 0.36, 1 },
  },
})

hl.curve("omarchyFade", {
  type = "bezier",
  points = {
    { 0.4, 0 },
    { 0.2, 1 },
  },
})


-- ------------------------------------------------------------
-- Window animations
-- ------------------------------------------------------------

hl.animation({
  leaf = "windowsIn",
  enabled = true,
  speed = 4,
  bezier = "omarchyEase",
  style = "popin 94%",
})

hl.animation({
  leaf = "windowsOut",
  enabled = true,
  speed = 2.4,
  bezier = "omarchyFade",
  style = "popin 96%",
})

hl.animation({
  leaf = "windowsMove",
  enabled = true,
  speed = 4,
  bezier = "omarchyEase",
})


-- ------------------------------------------------------------
-- Focus / opacity transitions
-- ------------------------------------------------------------

-- Smoothly interpolate when focus changes instead of switching
-- active/inactive opacity immediately.
hl.animation({
  leaf = "fadeSwitch",
  enabled = true,
  speed = 2.2,
  bezier = "omarchyFade",
})

hl.animation({
  leaf = "fade",
  enabled = true,
  speed = 3,
  bezier = "omarchyFade",
})


-- ------------------------------------------------------------
-- Layers / shell surfaces
-- ------------------------------------------------------------

hl.animation({
  leaf = "layersIn",
  enabled = true,
  speed = 5,
  bezier = "omarchyFade",
  style = "fade",
})

hl.animation({
  leaf = "layersOut",
  enabled = true,
  speed = 4,
  bezier = "omarchyFade",
  style = "fade",
})


-- ------------------------------------------------------------
-- Borders / workspace transitions
-- ------------------------------------------------------------

hl.animation({
  leaf = "border",
  enabled = true,
  speed = 5,
  bezier = "omarchyEase",
})

-- Simple fade instead of a sliding workspace animation.
hl.animation({
  leaf = "workspaces",
  enabled = true,
  speed = 5,
  bezier = "omarchyFade",
  style = "fade",
})

hl.animation({
  leaf = "specialWorkspace",
  enabled = true,
  speed = 3,
  bezier = "omarchyEase",
  style = "slidevert",
})
