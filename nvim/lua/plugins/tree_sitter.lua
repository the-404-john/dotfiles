local c = vim.cmd
local api = vim.api
local loop = vim.loop

local M = {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/playground",
        "nvim-treesitter/nvim-treesitter-refactor",
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",
}

M.config = function()
    require("nvim-treesitter.configs").setup({
        ensure_installed = { "asm", "c", "cpp", "c_sharp", "cmake", "make",
                             "python", "bash", "lua", "luadoc", "vim", "vimdoc",
                             "haskell",
                             "html", "css",
                             "query", "markdown", "markdown_inline" },

        sync_install = false,
        auto_install = true,

        highlight = {
            enable = true,

            disable = function(lang, buf)
                local max_filesize = 100 * 1024
                local ok, stats = pcall(loop.fs_stat, api.nvim_buf_get_name(buf))

                if ok and stats and stats.size > max_filesize then
                    return true
                end
            end,
        },

        autopairs = { enable = true },

        incremental_selection = {
            enable = true,
            kaymaps = {
                init_selection = " ss",
                node_incremental = "<leader>si",
                scope_incremental = "<leader>sc",
                node_decremental = "<leader>sd",
            },
        },

        refactor = {
            highlight_definitions = {
                enable = true,
            },

            smart_rename = {
                enable = true,
                keymaps = {
                    smart_rename = "<Leader>rn",
                },
            },
        },

        textobjects = {
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@class.outer",
                    ["ic"] = "@class.inner",
                },
            },
        },
    })
end

return M
