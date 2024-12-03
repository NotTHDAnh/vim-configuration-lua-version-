vim.keymap.set('n','<leader>dp',"<cmd>lua require'dap'.toggle_breakpoint() <CR>")
vim.keymap.set('n','<leader>bn',"<cmd>lua require'dap'.continue() <CR>")
vim.keymap.set('n','<leader>so',"<cmd>lua require'dap'.step_over() <CR>")
vim.keymap.set('n','<leader>si',"<cmd>lua require'dap'.step_into() <CR>")
local dap = require('dap')

dap.configurations.cpp = {
    {
         type = 'cpp';
         request = 'launch';
         name = "Launch file";
         program = "${file}";
         cppPath = function()
             return '/usr/bin/cpp'
         end;
    },
}
