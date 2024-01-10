return {
    {
        'theprimeagen/harpoon',
        branch = "harpoon2",
        config = function()
            local harpoon = require("harpoon")
            harpoon:setup({
              settings = {
                 save_on_toggle = true,
               },
            })

            vim.keymap.set("n" ,"<space>a", function() harpoon:list():append() end)
            vim.keymap.set("n" ,"<space>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n" ,"g0", ":lua require('harpoon.term').gototerminal(1)<CR>")
            vim.keymap.set("n" ,"g1", function() harpoon:list():select(1) end)
            vim.keymap.set("n" ,"g2", function() harpoon:list():select(2) end)
            vim.keymap.set("n" ,"g3", function() harpoon:list():select(3) end)
            vim.keymap.set("n" ,"g4", function() harpoon:list():select(4) end)
            vim.keymap.set("n" ,"g5", function() harpoon:list():select(5) end)

            vim.keymap.set("n", "gN", function() harpoon:list():prev() end)
            vim.keymap.set("n", "gn", function() harpoon:list():next() end)

            -- Alt list
            vim.keymap.set("n" ,"<space>A", function() harpoon:list('Capital'):append() end)
            vim.keymap.set("n" ,"<space>H", function() harpoon.ui:toggle_quick_menu(harpoon:list('Capital')) end)

            vim.keymap.set("n" ,"G0", ":lua require('harpoon.term').gototerminal(1)<CR>")
            vim.keymap.set("n" ,"G1", function() harpoon:list('Capital'):select(1) end)
            vim.keymap.set("n" ,"G2", function() harpoon:list('Capital'):select(2) end)
            vim.keymap.set("n" ,"G3", function() harpoon:list('Capital'):select(3) end)
            vim.keymap.set("n" ,"G4", function() harpoon:list('Capital'):select(4) end)
            vim.keymap.set("n" ,"G5", function() harpoon:list('Capital'):select(5) end)

            vim.keymap.set("n", "GN", function() harpoon:list('Capital'):prev() end)
            vim.keymap.set("n", "Gn", function() harpoon:list('Capital'):next() end)
        end
    },
}
