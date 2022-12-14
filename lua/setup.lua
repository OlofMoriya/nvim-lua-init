local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

require("harpoon").setup()

require('lualine').setup({
	options = {
	  icons_enabled = true,
	  theme = 'auto'
  }
})


require('gitsigns').setup()


require('telescope').setup{ 
  defaults = {
	  file_ignore_patterns = {".node-gyp/", ".node-gyp/*", "node-gyp", ".git/", ".git/*", ".cache", "./node_modules/*", "node_modules", "^node_modules/*", "node_modules/*", "yarn.lock" },
      path_display={"truncate"}
	},
    pickers = {
        find_files = {
            hidden = true
        }, 
        live_grep = {
            hidden = true
        },
        buffers = {
            sort_lastused = true,
            theme = "dropdown",
            mappings = {
                n = {
                    ["<c-d>"] = require("telescope.actions").delete_buffer,
                }
            }
        },
    },
	extensions = {
--    fzf = {
--      fuzzy = true,                    -- false will only do exact matching
--      override_generic_sorter = true,  -- override the generic sorter
--      override_file_sorter = true,     -- override the file sorter
--      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
--    }
  }
}

--require('telescope').load_extension('fzf')
require("telescope").load_extension("harpoon")

