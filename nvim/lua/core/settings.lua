local o = vim.opt
local g = vim.g
local c = vim.cmd

-- Font
g.have_nerd_font = true

-- Undo history
o.undofile = true

-- Status/Command line
o.showmode = false
o.laststatus = 3
o.cmdheight = 1

-- Search
o.ignorecase = true
o.smartcase = true
o.hlsearch = true

-- Events
o.updatetime = 250
o.timeoutlen = 300

-- Split
o.splitright = true
o.splitbelow = true
o.inccommand = "split"

-- Line number
o.number = true
o.ruler = false

-- Indenting
o.autoindent = true
o.smartindent = true
o.copyindent = true
o.expandtab = true
o.linebreak = true
o.breakindent = true
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.foldlevelstart = 50

-- Scrolling
o.wrap = false

-- Row
o.cursorline = true
o.cursorlineopt = "number"

-- Column
o.signcolumn = "yes"
o.colorcolumn = "80"

-- Whitespace characters
o.list = true
o.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Swaps
vim.o.swapfile = false

-- Start screen
-- o.shortmess:append("I")
