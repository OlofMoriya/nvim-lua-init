return {
    {
        'theprimeagen/harpoon',
        branch = "harpoon2",
        config = function()
            local harpoon = require("harpoon")
            harpoon:setup()

            vim.keymap.set("n" ,"<leader>a", function() harpoon:list():append() end)
            vim.keymap.set("n" ,"<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n" ,"g0", ":lua require('harpoon.term').gototerminal(1)<CR>")
            vim.keymap.set("n" ,"g1", function() harpoon:list():select(1) end)
            vim.keymap.set("n" ,"g2", function() harpoon:list():select(2) end)
            vim.keymap.set("n" ,"g3", function() harpoon:list():select(3) end)
            vim.keymap.set("n" ,"g4", function() harpoon:list():select(4) end)
            vim.keymap.set("n" ,"g5", function() harpoon:list():select(5) end)
        end
    },
}
