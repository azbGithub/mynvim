vim.loader.enable()
vim.opt.termguicolors = true
vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = 1
vim.opt.ttyfast = true
vim.opt.autochdir = false
vim.opt.cursorline = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undofile = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.clipboard = "unnamed"
vim.o.shell = "pwsh"
vim.o.shellcmdflag = "-command"
vim.o.shellquote = '"'
vim.o.shellxquote = ""
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.cmdheight = 1
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.termguicolors = true
vim.opt.list = true
vim.opt.listchars = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←"
-- vim.g.completeopt = "menu,menuone,noinsert,noselect"
vim.o.wildmenu = true
vim.g.encoding = "utf-8"
vim.g.fileencoding = "utf-8"
vim.opt.exrc = true
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  pattern = { "*" },
  callback = function()
    vim.highlight.on_yank {
      timeout = 100,
    }
  end,
})
vim.cmd "au ColorScheme * hi Normal ctermbg=none guibg=none"
vim.cmd "au ColorScheme * hi SignColumn ctermbg=none guibg=none"
vim.cmd "au ColorScheme * hi NormalNC ctermbg=none guibg=none"
vim.cmd "au ColorScheme * hi MsgArea ctermbg=none guibg=none"
vim.cmd "au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none"
vim.cmd "au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none"
vim.cmd "let &fcs='eob: '"
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile", "FileType" }, {
  pattern = { "c", "cpp", "txt", "c.snippets", "cpp.snippets" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})
vim.api.nvim_create_autocmd("TermOpen", { pattern = "term://*", command = [[startinsert]] })
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local pos = vim.fn.getpos "'\""
    if pos[2] > 0 and pos[2] <= vim.fn.line "$" then
      vim.api.nvim_win_set_cursor(0, { pos[2], pos[3] - 1 })
    end
  end,
})
