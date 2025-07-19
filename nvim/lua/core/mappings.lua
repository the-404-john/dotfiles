local g = vim.g
local map = vim.keymap.set

-- Movement
map("i", "<C-b>", "<ESC>^i", { noremap = true, desc = "Move beginning of line" })
map("i", "<C-e>", "<End>",   { noremap = true, desc = "Move end of line"       })
map("i", "<C-h>", "<Left>",  { noremap = true, desc = "Move left"              })
map("i", "<C-l>", "<Right>", { noremap = true, desc = "Move right"             })
map("i", "<C-j>", "<Down>",  { noremap = true, desc = "Move down"              })
map("i", "<C-k>", "<Up>",    { noremap = true, desc = "Move up"                })

map("i", "<C-S-l>", "<C-Right>", { noremap = true, desc = "Move right by one word" })
map("i", "<C-S-h>", "<C-Left>",  { noremap = true, desc = "Move left by one word"  })

map("n", "<C-S-l>", "w",         { noremap = true, desc = "Move right by one word" })
map("n", "<C-S-h>", "b",         { noremap = true, desc = "Move left by one word"  })

-- Windows
map("n", "<C-h>", "<C-w>h", { noremap = true, desc = "Switch window left"  })
map("n", "<C-l>", "<C-w>l", { noremap = true, desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { noremap = true, desc = "Switch window down"  })
map("n", "<C-k>", "<C-w>k", { noremap = true, desc = "Switch window up"    })

-- Restrictions
map("n", "<left>",  '<cmd>echo "Use h to move!!"<CR>')
map("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
map("n", "<up>",    '<cmd>echo "Use k to move!!"<CR>')
map("n", "<down>",  '<cmd>echo "Use j to move!!"<CR>')

map("i", "<left>",  '<cmd>echo "Use Ctrl + h to move!!"<CR>')
map("i", "<right>", '<cmd>echo "Use Ctrl + l to move!!"<CR>')
map("i", "<up>",    '<cmd>echo "Use Ctrl + k to move!!"<CR>')
map("i", "<down>",  '<cmd>echo "Use Ctrl + j to move!!"<CR>')

-- Comment
map("n", "<C-/>", "gcc", { desc = "toggle comment", remap = true })
map("v", "<C-/>", "gc",  { desc = "toggle comment", remap = true })

-- Highlight
map("n", "<Esc>", "<cmd>noh<CR>", { noremap = true, desc = "General clear highlights" })

-- Convenient
map({ "n", "x" }, ";",     ":",  { noremap = true, desc = "Enter command mode"      })
map({ "n", "x" }, "<C-b>", "^",  { noremap = true, desc = "Move beggining of line"  })
map({ "n", "x" }, "<C-e>", "g_", { noremap = true, desc = "Move end of line"        })

map("x", "p", '"_c<Esc>p"', { noremap = true, desc = "paste without contamination"  })

-- Continuous visual shifting
map("x", "<", "<gv", { noremap = true, desc = "shift left"  })
map("x", ">", ">gv", { noremap = true, desc = "shift right" })

-- Scrolling
map("i", "<C-u>", "<Esc><C-b>i", { noremap = true, desc = "Scroll full screen up in insert mode"   })
map("i", "<C-d>", "<Esc><C-f>i", { noremap = true, desc = "Scroll full screen down in insert mode" })
map("n", "<C-u>", "<C-b>",       { noremap = true, desc = "Scroll full screen up (page up)"        })
map("n", "<C-d>", "<C-f>",       { noremap = true, desc = "Scroll full screen down (page down)"    })

