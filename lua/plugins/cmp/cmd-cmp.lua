return {
  "hrsh7th/cmp-cmdline",
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = { "hrsh7th/nvim-cmp" },
  config = function()
    local cmp = require "cmp"
    cmp.setup.cmdline("/", {
      mapping = cmp.mapping.preset.insert {
        ["<Tab>"] = {
          c = function(_)
            if cmp.visible() then
              if #cmp.get_entries() == 1 then
                cmp.confirm { select = true }
              else
                cmp.select_next_item()
              end
            else
              cmp.complete()
              if #cmp.get_entries() == 1 then
                cmp.confirm { select = true }
              end
            end
          end,
        },
      },
      sources = cmp.config.sources {
        { name = "path" },
        { name = "cmdline" },
      },
    })
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.insert {
        ["<Tab>"] = {
          c = function(_)
            if cmp.visible() then
              if #cmp.get_entries() == 1 then
                cmp.confirm { select = true }
              else
                cmp.select_next_item()
              end
            else
              cmp.complete()
              if #cmp.get_entries() == 1 then
                cmp.confirm { select = true }
              end
            end
          end,
        },
      },
      sources = cmp.config.sources {
        { name = "path" },
        { name = "cmdline" },
      },
    })
  end,
}
