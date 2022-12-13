local opt = vim.opt

opt.termguicolors = true -- Enable colors in terminal
opt.hlsearch = true --Set highlight on search
opt.number = true --Make line numbers default
opt.relativenumber = true --Make relative number default
opt.breakindent = true --Enable break indent
opt.undofile = true --Save undo history
opt.ignorecase = true --Case insensitive searching unless /C or capital in search
opt.smartcase = true -- Smart case

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.incsearch = true

vim.opt.colorcolumn = "80"

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout= 100})
  augroup end
]]


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

vim.keymap.set("n", "<leader>nn", ":noh<C-m>")
vim.keymap.set("n", "<C-w>w", ":Explore<CR>")
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<C-l>", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<C-q>", ":Telescope quickfix<CR>")
vim.keymap.set("n", "<C-e>", ":Telescope buffers<CR>")

--harpoon
vim.keymap.set("n" ,"<leader>a", ":lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set("n" ,"<leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")

vim.keymap.set("n" ,"g0", ":lua require('harpoon.term').gototerminal(1)<CR>")
vim.keymap.set("n" ,"g1", ":lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set("n" ,"g2", ":lua require('harpoon.ui').nav_file(2)<CR>")
vim.keymap.set("n" ,"g3", ":lua require('harpoon.ui').nav_file(3)<CR>")
vim.keymap.set("n" ,"g4", ":lua require('harpoon.ui').nav_file(4)<CR>")


vim.keymap.set("n" ,"<leader>no", ":set nonumber nornu<CR>")
vim.keymap.set("n" ,"<leader>ni", ":set nu rnu<CR>")

vim.api.nvim_create_autocmd("FileType", {
      pattern = "rust",
      callback = function()
        vim.keymap.set("n" ,"<leader>r", ":!cargo run<cr>")
      end,
    })
vim.api.nvim_create_autocmd("FileType", {
      pattern = "cs",
      callback = function()
        vim.keymap.set("n" ,"<leader>r", ":!dotnet run<cr>")
      end,
    })
vim.api.nvim_create_autocmd("FileType", {
      pattern = "sh",
      callback = function()
        vim.keymap.set("n" ,"<leader>r", ":!bash %<cr>")
      end,
    })
