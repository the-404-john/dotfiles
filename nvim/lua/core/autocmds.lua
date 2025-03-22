local o = vim.o
local c = vim.cmd
local fn = vim.fn
local api = vim.api

c [[highlight Yanked guibg=#f9e2af guifg=#0a0c10]]

api.nvim_set_hl(0, 'ExtraWhitespace', { ctermbg = 'red', bg = '#ff5555' })

api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",

  group = api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank({ higroup = "Yanked" })
  end
})

api.nvim_create_autocmd("BufWritePre", {
    desc = "Replace tabs for spaces",

    pattern = "*",
    callback = function()
        c [[retab]]
    end
})

api.nvim_create_autocmd("BufWritePre", {
    desc = "Remove trailing whitespace",

    pattern = "*",
    callback = function()
        c [[%s/\s\+$//e]]
    end
})
