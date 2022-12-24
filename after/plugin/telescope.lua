
vim.keymap.set("n", "<C-p>", ":Telescope git_files<CR>")
vim.keymap.set("n", "<leader><C-p>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<C-l>", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader><C-l>", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
vim.keymap.set("n", "<C-q>", ":Telescope quickfix<CR>")
vim.keymap.set("n", "<C-e>", ":Telescope buffers<CR>")

