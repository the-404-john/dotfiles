local c = vim.cmd

local M = {
    "L3MON4D3/LuaSnip",
    version = "v2.*"
    build = "make install_jsregexp"
}

M.config = function()
    require("luasnip").setup({

    })
end

return M
