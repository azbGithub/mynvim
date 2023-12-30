local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
end
return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter", "BufRead", "BufNew" },
  dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "onsails/lspkind.nvim", -- vs-code like pictograms
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-emoji",
    "jc-doyle/cmp-pandoc-references",
    "kdheepak/cmp-latex-symbols",
  },
  config = function()
    local cmp = require "cmp"

    local luasnip = require "luasnip"

    local lspkind = require "lspkind"

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup {
      completion = {
        completeopt = "menu,menuone,noinsert,preview",
      },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      -- sources for autocompletion
      sources = cmp.config.sources {
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- snippets
        { name = "path" }, -- file system paths
        { name = "buffer" }, -- text within current buffer
        { name = "pandoc_references" },
        { name = "latex_symbols" },
        { name = "emoji" },
        { name = "calc" },
      },
      mapping = cmp.mapping.preset.insert {
        ["<S-Tab>"] = cmp.config.disable,
        ["<CR>"] = cmp.config.disable,
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-p>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-c>"] = cmp.mapping.abort(), -- close completion window
        -- auto chose th first suggestion
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            local entry = cmp.get_selected_entry()
            if not entry then
              cmp.select_next_item { behavior = cmp.SelectBehavior.Select }
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              if has_words_before() then
                cmp.confirm {
                  behavior = cmp.ConfirmBehavior.Insert,
                  select = false,
                }
              end
            end
          else
            fallback()
          end
        end, { "i", "s" }),
      },
      -- configure lspkind for vs-code like pictograms in completion menu
      formatting = {
        field = { "abbr", "kind", "menu" },
        format = lspkind.cmp_format {
          maxwidth = 50,
          ellipsis_char = "...",
        },
      },
      window = {
        completion = {
          winhighlight = "Normal:Pmenu,FloatBorder:WarningMsg,Search:None",
          col_offset = -3,
          side_padding = 1,
          border = "rounded",
          scrollbar = "║",
        },
        documentation = {
          border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        },
      },
      view = {
        entries = { name = "custom", selection_order = "near_cursor" },
      },
      experimental = {
        ghost_text = true,
      },
    }
  end,
}
