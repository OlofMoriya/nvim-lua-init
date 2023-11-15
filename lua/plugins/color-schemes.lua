return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "rose-pine/neovim",
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        opts = {},
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        opts = {},
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,

        config = function()
            vim.cmd "colorscheme catppuccin-frappe"
        end,
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000
    }
}
