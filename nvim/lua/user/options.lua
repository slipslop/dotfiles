vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3 -- open netRW in a tree style

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.title = true
vim.opt.mouse = 'a'

-- lualine shows mode
vim.opt.showmode = false

vim.opt.termguicolors = true

vim.opt.spell = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.list = true -- enable the below list
vim.opt.listchars = { tab = '> ', trail = '.' }

vim.opt.fillchars:append({ eob = ' '}) -- remove the ~~ from end-of-buffer

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- clear search highlights

vim.opt.confirm = true

vim.opt.undofile = true
-- vim.opt.backup = true
-- vim.opt.backupdir:remove('.') = true -- keep the backups out of the current dir
vim.opt.clipboard = 'unnamedplus'

-- vim global
vim.g.mapleader = " "
