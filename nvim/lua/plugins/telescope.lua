local c = vim.cmd

local M = {
    "nvim-telescope/telescope.nvim",

    event = "VimEnter",
    config = function()
        require("plugins.telescope")
    end,

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-fzf-native.nvim",
        "nvim-telescope/telescope-ui-select.nvim"
    },
}

M.config = function()
    require("telescope").setup({


    })
end

return M
