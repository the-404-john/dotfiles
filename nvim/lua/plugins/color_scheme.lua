local c = vim.cmd

local M = {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
}

M.config = function()
    require("catppuccin").setup({
        background = {
            light = "latte",
            dark = "mocha",
        },

        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = false,

        dim_inactive = {
            enabled = false,
            shade = "dark",
            percentage = 0.90,
        },

        no_italic = false,
        no_bold = false,
        no_underline = false,

        styles = {
            comments = { "italic" },
            conditionals = {},
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
            miscs = {}, -- Uncomment to turn off hard-coded styles
        },

        color_overrides = {
            mocha = {
                    base = "#0a0c10",
                    mantle = "#0a0c10",
                    crust = "#0a0c10",
                }
        },

        default_integrations = true,
        integrations = {

        },

        custom_highlights = function(colors)
            return {
                ["@parameter"] = { fg = colors.text },
                ["@variable.parameter"] = { fg = colors.text },
            }
        end
    })

    c.colorscheme 'catppuccin-mocha'
end

return M
