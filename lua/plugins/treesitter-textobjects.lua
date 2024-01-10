return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = true,
  config = function()
    require("nvim-treesitter.configs").setup({
            textobjects = {
                select = {
                    enable = true,

                    -- Automatically jump forward to textobj, similar to targets.vim
                    lookahead = true,
                    keymaps = {
                        ["af"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
                        ["if"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },
                        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
                    }
                },
                move = {
                    enable = true,
                    goto_next_start = {
                        ["]f"] = "@function.outer",
                        ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
                    },
                    goto_next_end = { ["]F"] = "@function.outer"},
                    goto_previous_start = {
                        ["[f"] = "@function.outer",
                        ["[s"] = { query = "@scope", query_group = "locals", desc = "Prev scope" },
                    },
                    goto_previous_end = { ["[F"] = "@function.outer"},
                },
            },
    })
  end
}
