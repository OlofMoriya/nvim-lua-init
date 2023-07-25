local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = '/usr/local/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}

vim.keymap.set("n" ,"<leader>gs", ":lua require('dap').continue()<CR>")
vim.keymap.set("n" ,"<leader>go", ":lua require('dap').step_over()<CR>")
vim.keymap.set("n" ,"<leader>gi", ":lua require('dap').step_into()<CR>")
vim.keymap.set("n" ,"<leader>gu", ":lua require('dap').step_out()<CR>")
vim.keymap.set("n" ,"<leader>gb", ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n" ,"<leader>gr", ":lua require('dap').repl_toggle()<CR>")
vim.keymap.set("n" ,"<leader>gl", ":lua require('dap').run_last()<CR>")
vim.keymap.set("n" ,"<leader>gc", ":lua require('dap').close()<CR>")

