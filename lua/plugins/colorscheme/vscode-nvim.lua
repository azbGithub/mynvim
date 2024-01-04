return {
  "Mofiqul/vscode.nvim",
  enabled = false,
  config = function()
    vim.o.background = "dark"
    vim.cmd "colorscheme vscode"
    local c = require("vscode.colors").get_colors()
    require("vscode").setup {

      transparent = true,
      italic_comments = true,
      disable_nvimtree_bg = true,
      color_overrides = {
        vscLineNumber = "#FFFFFF",
      },
      group_overrides = {
        Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
      },
    }
    require("vscode").load()
  end,
}
