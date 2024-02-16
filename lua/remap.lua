local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- Go to init folder
keymap.set("n", "<space><space>i", ":e ~/.config/nvim/<CR>")

-- Move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")

keymap.set("n", "<leader>d", "\"_d")
keymap.set("n", "<leader>D", "\"_D")
keymap.set("v", "<leader>d", "\"_d")

-- Replace text
keymap.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")


-- remove highlights
keymap.set("n", "<leader>nn", ":noh<C-m>")

-- Open explorer
keymap.set("n", "<C-w>w", ":Explore<CR>")
keymap.set("n", "-", ":Explore<CR>")

-- New tab
keymap.set("n", "tn", ":tab new<CR>")

-- Remove and reapply numbers
keymap.set("n" ,"<leader>no", ":set nonumber nornu<CR>")
keymap.set("n" ,"<leader>ni", ":set nu rnu<CR>")

-- Floating session switcher
keymap.set("n", "<leader>ss", ":!tmux popup -E bash tmux-sessionizer.sh<CR>")

-- Automatic start command for rust, bash, and dotnet
-- vim.api.nvim_create_autocmd("FileType", {
--       pattern = "rust",
--       callback = function()
--         keymap.set("n" ,"<leader>r", ":!cargo run<cr>")
--       end,
--     })
-- vim.api.nvim_create_autocmd("FileType", {
--       pattern = "cs",
--       callback = function()
--         keymap.set("n" ,"<leader>r", ":!dotnet run<cr>")
--       end,
--     })
-- vim.api.nvim_create_autocmd("FileType", {
--       pattern = "sh",
--       callback = function()
--         keymap.set("n" ,"<leader>r", ":!bash %<cr>")
--       end,
--     })

-- Open last search in quickfix list
keymap.set("n", "<leader>C", ":vim // * | :copen<CR>")
-- only the current file in search 
keymap.set("n", "<leader>c", ":vim // % | :copen<CR>")

-- quickfix keymaps
keymap.set("n", "<leader>v", ":ccl | noh <CR>")
keymap.set("n", "<space>n", ":cnext<CR>")
keymap.set("n", "<space>N", ":cprev<CR>")

-- -- Tabs
-- If Tab is mapped C-i doesn't work
-- keymap.set("n", "<tab>", ":tabnext<CR>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<CR>", opts)

-- Splits
keymap.set("n", "<C-w>%", ":vsplit<C-m>")
keymap.set("n", "<C-w>\"", ":split<C-m>")
keymap.set("n", "<space>ss", ":split<CR>", opts)
keymap.set("n", "<space>sv", ":vsplit<CR>", opts)
keymap.set("n", "<space>sh", "<C-w>h")
keymap.set("n", "<space>sj", "<C-w>j")
keymap.set("n", "<space>sk", "<C-w>k")
keymap.set("n", "<space>sl", "<C-w>l")
keymap.set("n", "<space>so", "<C-w>o")

-- Diagnostics
keymap.set("n", "[e", function() vim.diagnostic.goto_prev({severity=vim.diagnostic.severity.ERROR}) end)
keymap.set("n", "]e", function() vim.diagnostic.goto_next({severity=vim.diagnostic.severity.ERROR}) end)
keymap.set("n", "[w", function() vim.diagnostic.goto_prev({severity=vim.diagnostic.severity.WARNING}) end)
keymap.set("n", "]w", function() vim.diagnostic.goto_next({severity=vim.diagnostic.severity.WARNING}) end)

-- Buffers 
keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer", })
keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer", })

-- Open AI plugin

keymap.set("v", "<space>v", ":lua require('test-chat').replace()<CR>")
keymap.set("v", "<space>vv", ":lua require('test-chat').replacellama()<CR>")
keymap.set("n", "<space>v", ":lua require('test-chat').ask()<CR>")

keymap.set("n", "<C-I>", "<C-I>")
