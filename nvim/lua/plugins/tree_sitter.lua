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
        ensure_installed = { "asm", "c", "cpp", "c_sharp", "rust", "zig",
                             "cmake", "make",
                             "python", "bash", "lua", "luadoc", "vim", "vimdoc",
                             "haskell",
                             "html", "css",
                             "json", "query", "markdown", "markdown_inline" },

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
    })
end

return M
