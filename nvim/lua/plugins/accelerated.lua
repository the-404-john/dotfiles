local map = vim.keymap.set

local M = {
    "rainbowhxch/accelerated-jk.nvim"
}

M.config = function()
    require("accelerated-jk").setup({
        mode = "time_driven",
        enable_deceleration = false,
        acceleration_motions = {},
        acceleration_limit = 200,
        acceleration_table = { 10, 15 },
    })

    map("n", "j", "<Plug>(accelerated_jk_gj)")
    map("n", "k", "<Plug>(accelerated_jk_gk)")
end

return M
