vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.foldlevel = 99

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.textwidth = 120
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fileformat = unix
vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
vim.keymap.set('n','<C-Y>',"<cmd>%y+<Cr>")
vim.keymap.set('n','<leader>tg',"<cmd>FloatermNew --position=topright <CR>")
