return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', },
    config = {
        options = {
            icons_enabled = true,
            theme = 'auto',
        },
        sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename', 'diff', 'diagnostics' },
            lualine_x = { 'branch' },
            lualine_y = {},
            lualine_z = {}
        },
    }
}
