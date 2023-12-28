local set = vim.o
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.number = true
set.relativenumber = true
set.clipboard = 'unnamed'
set.shell = 'pwsh'
set.shellcmdflag = '-command'
set.shellquote = '"'
set.shellxquote = ''
set.scrolloff = 8
set.sidescrolloff = 8
set.ignorecase = true
set.smartcase = true
set.cmdheight = 1
set.backup = false
set.writebackup = false
set.swapfile = false
set.autoindent = true
set.smartindent = true
set.ignorecase = true
set.smartcase = true
set.termguicolors = true
vim.g.completeopt = 'menu,menuone,noinsert,noselect'
set.wildmenu = true
vim.g.encoding = 'utf-8'
vim.g.fileencoding = 'utf-8'
vim.opt.exrc = true
vim.api.nvim_create_autocmd({ 'TextYankPost' }, {
  pattern = { '*' },
  callback = function()
    vim.highlight.on_yank {
      timeout = 300,
    }
  end,
})
