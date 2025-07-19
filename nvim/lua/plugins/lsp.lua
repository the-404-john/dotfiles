local M = {
    "neovim/nvim-lspconfig"
}

M.config = function()
    local lsp = require("lspconfig")
    lsp.rust_analyzer.setup({})
end

return M
