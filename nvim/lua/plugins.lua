local M = {}

function M.setup()
  -- Indicate first time installation
  local packer_bootstrap = false

  -- packer.nvim configuration
  local conf = {
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end,
    },
  }

  -- Check if packer.nvim is installed
  -- Run PackerCompile if there are changes in this file
  local function packer_init()
    local fn = vim.fn
    local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
      }
      vim.cmd [[packadd packer.nvim]]
    end
    vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
  end

  -- Plugins
  local function plugins(use)
    use { "wbthomason/packer.nvim" }
    -- Colorscheme
    use {
      "rose-pine/neovim",
      config = function()
        vim.cmd "colorscheme rose-pine"
      end,
    }
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
    use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
              {'neovim/nvim-lspconfig'},
              {'williamboman/mason.nvim'},
              {'williamboman/mason-lspconfig.nvim'},

              -- Autocompletion
              {'hrsh7th/nvim-cmp'},
              {'hrsh7th/cmp-buffer'},
              {'hrsh7th/cmp-path'},
              {'saadparwaiz1/cmp_luasnip'},
              {'hrsh7th/cmp-nvim-lsp'},
              {'hrsh7th/cmp-nvim-lua'},
               { "davidsierradz/cmp-conventionalcommits" },
               

              -- Snippets
              {'L3MON4D3/LuaSnip'},
              {'rafamadriz/friendly-snippets'},
          }
      }
      use {
          'nvim-telescope/telescope.nvim', tag = '0.1.0',
          -- or                            , branch = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
      }
     
    -- lists

    use({ "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" })
    use({ "folke/trouble.nvim", requires = "nvim-tree/nvim-web-devicons" })

      use('nvim-lualine/lualine.nvim')
      use('lewis6991/gitsigns.nvim')
      use('jinh0/eyeliner.nvim')
      use('eandrju/cellular-automaton.nvim')
      use('nullchilly/fsread.nvim')
      use('folke/tokyonight.nvim')
      use {
          'nvim-treesitter/nvim-treesitter',
          run = function()
              local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
              ts_update()
          end,
      }
      use {
          'prettier/vim-prettier',
          run = 'yarn install',
          ft = {'tsx', 'jsx', 'typescriptreact', 'javascriptreact', 'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'vue', 'html'}
      }
      use('mfussenegger/nvim-dap')
      use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
      use("solidjs-community/solid-snippets")

      use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
      use "m4xshen/hardtime.nvim"
      use {
         'numToStr/Comment.nvim',
        config = function()
        require('Comment').setup()
        end
        }
      use "sindrets/diffview.nvim"
   
    if packer_bootstrap then
      print "Restart Neovim required after installation!"
      require("packer").sync()
    end
  end

  packer_init()

  local packer = require "packer"
  packer.init(conf)
  packer.startup(plugins)
end

return M
