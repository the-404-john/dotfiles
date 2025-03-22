local c = vim.cmd
local g = vim.g

g.logging_level = "info"
g.loaded_tutor_mode_plugin = 1

-- Leader
g.mapleader = " "
g.maplocalleader = " "

-- Cursor
g.neovide_cursor_vfx_mode = "ripple"
g.neovide_cursor_animation_length = 0
g.neovide_cursor_trail_length = 0

g.netrw_banner = 0
g.netre_mouse = 2

c [[syntax on]]
c [[filetype plugin indent on]]
c [[language en_US.UTF-8]]
