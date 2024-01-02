local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<esc>", opts)
vim.keymap.set("i", "kk", "<esc>", opts)
vim.keymap.set("i", "jk", "<esc>", opts)
vim.keymap.set("n", "<c-u>", "9k", opts)
vim.keymap.set("n", "<c-i>", "9j", opts)
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set("n", "<leader>w", "<cmd>w!<cr>", { desc = "save_files" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "quit_all" })
opts.desc = "close current window"
vim.keymap.set("n", "<leader>wc", "<c-w>c", opts)
opts.desc = "close other window"
vim.keymap.set("n", "<leader>wo", "<c-w>o", opts)
opts.desc = "vertical split  window"
vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<cr>", opts)
opts.desc = "horizontal split window"
vim.keymap.set("n", "<leader>ws", "<cmd>split<cr>", opts)
vim.keymap.set("n", "H", "^", opts)
vim.keymap.set("n", "L", "$", opts)
vim.keymap.set("n", "<c-l>", "<c-w>l", opts)
vim.keymap.set("n", "<c-h>", "<c-w>h", opts)
vim.keymap.set("n", "<c-j>", "<c-w>j", opts)
vim.keymap.set("n", "<c-k>", "<c-w>k", opts)
vim.keymap.set("n", "<c-a>", "gg<s-v>G", opts)
vim.keymap.set("n", "<c-left>", "<c-w><")
vim.keymap.set("n", "<c-right>", "<c-w>>")
vim.keymap.set("n", "<c-up>", "<c-w>+")
vim.keymap.set("n", "<c-down>", "<c-w>-")
vim.keymap.set("n", "Y", "y$", opts)
vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })
vim.keymap.set("n", "p", "<cmd>pu<cr>", opts)
opts.desc = "kill buffer"
vim.keymap.set("n", "<leader>k", "<cmd>bd<cr>", opts)
