--FIXME: cmd completion
return {
  "hrsh7th/cmp-cmdline",
  keys = { ":", "/", "?" }, -- lazy load cmp on more keys along with insert mode
  dependencies = { "hrsh7th/nvim-cmp" },
  opts = function()
    local cmp = require "cmp"
    return {
      {
        type = "/",
        mapping = {
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end, { "i", "s" }),
        },
        sources = {
          { name = "buffer" },
        },
      },
      {
        type = ":",
        mapping = {
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end, { "i", "s" }),
        },
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      },
    }
  end,
  config = function(_, opts)
    local cmp = require "cmp"
    vim.tbl_map(function(val)
      cmp.setup.cmdline(val.type, val)
    end, opts)
  end,
}
