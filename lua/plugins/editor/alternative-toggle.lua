return {
  "rmagatti/alternate-toggler",
  event = { "BufReadPost" }, -- lazy load after reading a buffer
  config = function()
    require("alternate-toggler").setup {
      alternates = {
        ["=="] = "!=",
        ["true"] = "false",
        ["True"] = "False",
        ["TRUE"] = "FALSE",
        ["Yes"] = "No",
        ["YES"] = "NO",
        ["<"] = ">",
        ["("] = ")",
        ["["] = "]",
        ["{"] = "}",
        ['"'] = "'",
        ['""'] = "''",
        ["+"] = "-",
        ["==="] = "!==",
      },
    }
    local opts = { noremap = true, silent = true }
    opts.desc = "quick change 1 to 0"
    vim.keymap.set(
      "n",
      "<leader><space>", -- <space><space>
      "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>",
      opts
    )
  end,
}
