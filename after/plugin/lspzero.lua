vim.keymap.set("n", "<leader>f", ":LspZeroFormat<CR>")

local lsp = require('lsp-zero')

lsp.preset('recommended')

vim.keymap.set({ "i", "s" }, "<C-Space>", function() require'luasnip'.jump(1) end, { desc = "LuaSnip forward jump" })
vim.keymap.set({ "i", "s" }, "<S-Space>", function() require'luasnip'.jump(-1) end, { desc = "LuaSnip backward jump" })


local nvim_lsp = require('lspconfig')
lsp.configure('csharp_ls', {
    root_dir = nvim_lsp.util.root_pattern('*.sln', '.git')
})

lsp.setup()
