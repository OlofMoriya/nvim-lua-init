return {
    {
        'vonheikemen/lsp-zero.nvim',
        dependencies = {
            -- lsp support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { "davidsierradz/cmp-conventionalcommits" },

            -- snippets
            { 'l3mon4d3/luasnip' },
            { 'rafamadriz/friendly-snippets' },
            { "solidjs-community/solid-snippets" }
        }
    },
}
