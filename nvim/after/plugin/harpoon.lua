--harpoon
vim.keymap.set("n" ,"<leader>a", ":lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set("n" ,"<leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")

vim.keymap.set("n" ,"g0", ":lua require('harpoon.term').gototerminal(1)<CR>")
vim.keymap.set("n" ,"g1", ":lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set("n" ,"g2", ":lua require('harpoon.ui').nav_file(2)<CR>")
vim.keymap.set("n" ,"g3", ":lua require('harpoon.ui').nav_file(3)<CR>")
vim.keymap.set("n" ,"g4", ":lua require('harpoon.ui').nav_file(4)<CR>")

