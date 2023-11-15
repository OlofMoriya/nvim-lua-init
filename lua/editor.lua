local opt = vim.opt

opt.termguicolors = true -- Enable colors in terminal
opt.hlsearch = true --Set highlight on search
opt.number = true --Make line numbers default
opt.relativenumber = true --Make relative number default
opt.breakindent = true --Enable break indent
opt.undofile = true --Save undo history
opt.ignorecase = true --Case insensitive searching unless /C or capital in search
opt.smartcase = true -- Smart case

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.incsearch = true

opt.colorcolumn = "80"

opt.laststatus = 3

-- vim.cmd("set cursorline")
-- vim.cmd("hi CursorLine guibg=#1f1d2e")
-- vim.cmd("hi CursorLineNr gui=bold guifg=#f6c177 guibg=#1f1d2e")


-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout= 100})
  augroup end
]]

