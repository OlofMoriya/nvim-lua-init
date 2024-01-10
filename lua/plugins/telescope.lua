return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy=false,
    keys = {
        { "<space>p", ":Telescope find_files theme=ivy<CR>" },
        { "<space>l", ":Telescope live_grep theme=ivy<CR>" },
        { "<space>q", ":Telescope quickfix theme=ivy<CR>" },
        { "<space>b", ":Telescope buffers theme=ivy<CR>" },
        -- { "<space>a", ":Telescope treesitter theme=ivy<CR>" },
        { "<space>r", ":Telescope lsp_references theme=ivy<CR>" },
        { "<space>d", ":Telescope lsp_definitions theme=ivy<CR>" },
        { "<space>t", ":Telescope lsp_diagnistics theme=ivy<CR>" },
        { "<space>q", ":Telescope quickfixhistory theme=ivy<CR>" },
        { "<space>c", ":Telescope resume<CR>" },
        { "<space>j", ":Telescope jumplist<CR>" },
    },
    config = {
        defaults = {
            hidden = true, 
            file_ignore_patterns = { ".node-gyp/", ".node-gyp/*", "node-gyp", ".git/", ".git/*", ".cache",
                "./node_modules/*", "node_modules", "^node_modules/*", "node_modules/*", "yarn.lock" },
            path_display = { "truncate" }
        },
        pickers = {
            find_files = {
                hidden = true,
            },
            live_grep = {
                hidden = true,
            },
            buffers = {
                sort_lastused = true,
            },
        },
        extensions = {
               -- fzf = {
               --   fuzzy = true,                    -- false will only do exact matching
               --   override_generic_sorter = true,  -- override the generic sorter
               --   override_file_sorter = true,     -- override the file sorter
               --   case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
               -- }
        }
    }
}
