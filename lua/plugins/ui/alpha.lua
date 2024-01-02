-- return {
return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local alpha = require "alpha"
    local dashboard = require "alpha.themes.dashboard"
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }
    _Gopts = {
      position = "center",
      hl = "Type",
    }
    dashboard.section.buttons.val = {
      dashboard.button("n", "  => New File", "<cmd>ene<CR>"),
      dashboard.button("e", "  => Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("f", "󰱼  => Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("w", "  => Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("s", "󰁯  => Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  => Quit Nvim", "<cmd>qa<CR>"),
    }
    dashboard.section.footer.val = {
      "			https://github.com/azbGithub			 ",
      "			Don't Stop Until You are Proud...	 ",
    }
    alpha.setup(dashboard.opts)
    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
