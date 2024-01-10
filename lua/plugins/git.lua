return {
    {
        'tpope/vim-fugitive',
        keys = {
            { "<leader>gg", ":Git<CR>" }
        },
        cmd = "Git"
    },
    {
        'lewis6991/gitsigns.nvim',
        config = {},
        keys = {
            { "<space>bl", ":Gitsigns blame_line<CR>" }
        }
    },
}
