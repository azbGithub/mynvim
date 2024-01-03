-- Sample configuration is supplied
return {
  "lmburns/lf.nvim",
  event = "VeryLazy",
  config = function()
    require("lf").setup {
      escape_quit = false,
      border = "rounded",
    }

    vim.keymap.set("n", "<c-o>", "<Cmd>Lf<CR>")
    vim.api.nvim_create_autocmd("User", {
      pattern = "LfTermEnter",
      callback = function(a)
        vim.api.nvim_buf_set_keymap(a.buf, "t", "q", "q", { nowait = true })
      end,
    })
  end,
  requires = { "toggleterm.nvim" },
}
