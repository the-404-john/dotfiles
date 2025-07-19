local c = vim.cmd
local map = vim.keymap.set

local M = {
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-fzf-native.nvim",
        "nvim-telescope/telescope-ui-select.nvim"
    },
}

M.config = function()
    local actions = require("telescope.actions")

    require("telescope").setup({
        defaults = {
            mappings = {
                i = {
                    ["<C-j>"] = actions.move_selection_next,
                    ["<C-k>"] = actions.move_selection_previous,
                    ["<C-l>"] = false,
                    ["<C-h>"] = false
                },

                n = {
                    ["<C-j>"] = actions.move_selection_next,
                    ["<C-k>"] = actions.move_selection_previous,
                    ["<C-l>"] = false,
                    ["<C-h>"] = false
                }
            }
        },

        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
          },
        }
    })

    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "ui-select")

    local builtin = require("telescope.builtin")
    map("n", "<leader>fh", builtin.help_tags,     { desc = "[F]ind [H]elp"             })
    map("n", "<leader>fk", builtin.keymaps,       { desc = "[F]ind [K]eymaps"          })
    map("n", "<leader>ff", builtin.find_files,    { desc = "[F]ind [F]iles"            })
    map("n", "<leader>fs", builtin.builtin,       { desc = "[F]ind [S]elect"           })
    map("n", "<leader>fw", builtin.grep_string,   { desc = "[F]ind [W]ord"             })
    map("n", "<leader>fl", builtin.live_grep,     { desc = "[F]ind by [L]ive grep"     })
    map("n", "<leader>fd", builtin.diagnostics,   { desc = "[F]ind [D]iagnostics"      })
    map("n", "<leader>fr", builtin.resume,        { desc = "[F]ind [R]esume"           })
    map("n", "<leader>fo", builtin.oldfiles,      { desc = "[F]ind Recent [O]ld Files" })
end

return M
