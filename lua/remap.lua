-- Go to init folder
vim.keymap.set("n", "<space><space>i", ":e ~/.config/nvim/<CR>")

-- Move lines
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
vim.keymap.set("n", "<leader>D", "\"_D")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Replace text
vim.keymap.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- remove highlights
vim.keymap.set("n", "<leader>nn", ":noh<C-m>")

-- Open explorer
vim.keymap.set("n", "<C-w>w", ":Explore<CR>")
vim.keymap.set("n", "-", ":Explore<CR>")

-- New tab
vim.keymap.set("n", "tn", ":tab new<CR>")

-- Remove and reapply numbers
vim.keymap.set("n" ,"<leader>no", ":set nonumber nornu<CR>")
vim.keymap.set("n" ,"<leader>ni", ":set nu rnu<CR>")

-- Floating session switcher
vim.keymap.set("n", "<leader>ss", ":!tmux popup -E bash tmux-sessionizer.sh<CR>")

-- Automatic start command for rust, bash, and dotnet
-- vim.api.nvim_create_autocmd("FileType", {
--       pattern = "rust",
--       callback = function()
--         vim.keymap.set("n" ,"<leader>r", ":!cargo run<cr>")
--       end,
--     })
-- vim.api.nvim_create_autocmd("FileType", {
--       pattern = "cs",
--       callback = function()
--         vim.keymap.set("n" ,"<leader>r", ":!dotnet run<cr>")
--       end,
--     })
-- vim.api.nvim_create_autocmd("FileType", {
--       pattern = "sh",
--       callback = function()
--         vim.keymap.set("n" ,"<leader>r", ":!bash %<cr>")
--       end,
--     })
    
-- for working with term in split
vim.keymap.set("n", "<A-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("n", "<A-l>", "<C-\\><C-n><C-w>l")
vim.keymap.set("n", "<A-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("n", "<A-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("n", "<C-w>%", ":vsplit<C-m>")
vim.keymap.set("n", "<C-w>\"", ":split<C-m>")

vim.keymap.set("n", "<leader>C", ":vim // * | :copen<CR>") 
vim.keymap.set("n", "<leader>c", ":vim // % | :copen<CR>") 
vim.keymap.set("n", "<leader>v", ":ccl | noh <CR>") 
vim.keymap.set("n", "<space>n", ":cnext<CR>")
vim.keymap.set("n", "<space>N", ":cprev<CR>")
