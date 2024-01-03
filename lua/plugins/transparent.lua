return {
  "xiyaowong/transparent.nvim",
  event = "VeryLazy",
  config = function()
    require("transparent").setup { -- Optional, you don't have to run setup.
      groups = { -- table: default groups
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "CursorLine",
        "CursorLineNr",
        "StatusLine",
        "StatusLineNC",
        "EndOfBuffer",
      },
      extra_groups = {
        "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
        "NvimTreeNormal",
      },
      exclude_groups = {},
    }
    vim.g.transparent_groups = vim.list_extend(
      vim.g.transparent_groups or {},
      vim.tbl_map(function(v)
        return v.hl_group
      end, vim.tbl_values(require("bufferline.config").highlights))
    )
    require("transparent").clear_prefix "BufferLine"
    require("transparent").clear_prefix "lualine"
  end,
}
