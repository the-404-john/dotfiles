local g = vim.g
local map = vim.keymap.set

-- Movement
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>",   { desc = "move end of line" })
map("i", "<C-h>", "<Left>",  { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>",  { desc = "move down" })
map("i", "<C-k>", "<Up>",    { desc = "move up" })

map("i", "<C-S-l>", "<C-Right>", { desc = "move right by one word" })
map("i", "<C-S-h>", "<C-Left>",  { desc = "move left by one word" })

map("n", "<C-S-l>", "w",         { desc = "move right by one word" })
map("n", "<C-S-h>", "b",         { desc = "move left by one word" })

-- Windows
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- Restrictions
map("n", "<left>", 	'<cmd>echo "use h to move!!"<CR>')
map("n", "<right>", '<cmd>echo "use l to move!!"<CR>')
map("n", "<up>", 	'<cmd>echo "use k to move!!"<CR>')
map("n", "<down>", 	'<cmd>echo "use j to move!!"<CR>')

map("i", "<left>", 	'<cmd>echo "use Ctrl + h to move!!"<CR>')
map("i", "<right>", '<cmd>echo "use Ctrl + l to move!!"<CR>')
map("i", "<up>", 	'<cmd>echo "use Ctrl + k to move!!"<CR>')
map("i", "<down>", 	'<cmd>echo "use Ctrl + j to move!!"<CR>')

-- Comment
map("n", "<C-/>", "gcc", { desc = "toggle comment", remap = true })
map("v", "<C-/>", "gc", { desc = "toggle comment", remap = true })

-- Highlight
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- Convenient
map({ "n", "x" }, ";",     ":",  { desc = "enter command mode"      })
map({ "n", "x" }, "<C-b>", "^",  { desc = "move beggining of line " })
map({ "n", "x" }, "<C-e>", "g_", { desc = "move end of line "       })

map("x", "p", '"_c<Esc>p"', { desc = "paste without contamination"  })

-- Continuous visual shifting
map("x", "<", "<gv", { desc = "shift left"  })
map("x", ">", ">gv", { desc = "shift right" })
