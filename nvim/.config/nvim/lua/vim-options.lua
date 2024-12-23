vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.showmode = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.cursorline = true
vim.opt.hlsearch = true
vim.opt.relativenumber = true

vim.keymap.set('i', 'jj', '<ESC>', {})
vim.keymap.set('n', 'tt', 'zt', {})
vim.keymap.set('n', 'mm', 'zz', {})
vim.keymap.set('n', 'bb', 'zb', {})
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('v', '<Leader>y', '"+y', {})
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {})

vim.keymap.set('i', '\'', '\'\'<left>', {})
vim.keymap.set('i', '\"', '\"\"<left>', {})
vim.keymap.set('i', '(', '()<left>', {})
vim.keymap.set('i', '[', '[]<left>', {})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

