return {
  "mbbill/undotree",
  config = function()
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_TreeNodeShape = "-"
  end,
  keys = {
    { "<leader>gu", ":UndotreeToggle<CR>", desc = "undo tree toggle", silent = true, noremap = true },
  },
}
