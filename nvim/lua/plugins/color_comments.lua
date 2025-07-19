local map = vim.keymap.set

local M = {
    "folke/todo-comments.nvim",

    event = "VimEnter",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    opts = { signs = false }
}

M.config = function()
    local comms = require("todo-comments")
    comms.setup({})

    map("n", "]t",         comms.jump_next,          { desc = "Next todo comment"      })
    map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "[F]ind [t]odo comments" })
    map("n", "[t",         comms.jump_prev,          { desc = "Previous todo comment"  })
end

return M
