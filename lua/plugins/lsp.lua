return {
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'hrsh7th/nvim-cmp' },
    {
        'vonheikemen/lsp-zero.nvim',
        lazy = false,
        dependencies = {
            -- lsp support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { "davidsierradz/cmp-conventionalcommits" },

            -- snippets
            { 'l3mon4d3/luasnip' },
            { 'rafamadriz/friendly-snippets' },
            { "solidjs-community/solid-snippets" }
        },
        config = function() 
            vim.keymap.set("n", "<leader>f", ":LspZeroFormat<CR>")

            local lsp = require('lsp-zero')

            lsp.preset('recommended')

            -- vim.keymap.set({ "i", "s" }, "<C-Space>", function() require 'luasnip'.jump(1) end, { desc = "LuaSnip forward jump" })
            -- vim.keymap.set({ "i", "s" }, "<S-Space>", function() require 'luasnip'.jump(-1) end, { desc = "LuaSnip backward jump" })

            local nvim_lsp = require('lspconfig')
            lsp.configure('csharp_ls', {
                root_dir = nvim_lsp.util.root_pattern('*.sln', '.git')
            })

            lsp.setup()
        end
    },
}
