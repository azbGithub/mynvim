local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '
vim.keymap.set('i', 'jj', '<esc>', opts)
vim.keymap.set('i', 'kk', '<esc>', opts)
vim.keymap.set('i', 'jk', '<esc>', opts)
vim.keymap.set('n', '<c-u>', '9k', opts)
vim.keymap.set('n', '<c-i>', '9j', opts)
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('n', '<leader>w', '<cmd>w!<cr>', { desc = 'save_files' })
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', { desc = 'quit_all' })
vim.keymap.set('n', '<leader>wc', '<c-w>c', opts)
vim.keymap.set('n', '<leader>wo', '<c-w>o', opts)
vim.keymap.set('n', 'H', '^', opts)
vim.keymap.set('n', 'L', '$', opts)
vim.keymap.set('n', '<c-l>', '<c-w>l', opts)
vim.keymap.set('n', '<c-h>', '<c-w>h', opts)
vim.keymap.set('n', '<c-j>', '<c-w>j', opts)
vim.keymap.set('n', '<c-k>', '<c-w>k', opts)
vim.keymap.set('n', '<c-a>', 'gg<s-v>G', opts)
vim.keymap.set('n', 'Y', 'y$', opts)
vim.keymap.set('n', 'j', [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set('n', 'k', [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })
vim.keymap.set('n', 'p', '<cmd>pu<cr>', opts)
vim.keymap.set('n', '<leader>k', '<cmd>bd<cr>', { desc = 'kill buffer' })
vim.cmd 'au ColorScheme * hi Normal ctermbg=none guibg=none'
vim.cmd 'au ColorScheme * hi SignColumn ctermbg=none guibg=none'
vim.cmd 'au ColorScheme * hi NormalNC ctermbg=none guibg=none'
vim.cmd 'au ColorScheme * hi MsgArea ctermbg=none guibg=none'
vim.cmd 'au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none'
vim.cmd 'au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none'
vim.cmd "let &fcs='eob: '"
