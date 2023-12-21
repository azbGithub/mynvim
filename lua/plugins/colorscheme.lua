return {
	"Shatur/neovim-ayu",
	config = function()
		require("ayu").setup({
			overrides = {
				Normal = { bg = "None" },
				ColorColumn = { bg = "None" },
				SignColumn = { bg = "None" },
				Folded = { bg = "None" },
				FoldColumn = { bg = "None" },
				CursorLine = { bg = "None" },
				CursorColumn = { bg = "None" },
				WhichKeyFloat = { bg = "None" },
				VertSplit = { bg = "None" },
			},
		})
		local colors = require("ayu.colors")
		colors.generate() -- Pass `true` to enable mirage

		require("ayu").setup({
			overrides = function()
				return { Comment = { fg = colors.comment } }
			end,
		})
		vim.cmd("colorscheme ayu")
	end,
	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.o.background = "dark" -- or "light" for light mode
	-- 		require("gruvbox").setup({
	-- 			terminal_colors = true, -- add neovim terminal colors
	-- 			undercurl = true,
	-- 			underline = true,
	-- 			bold = true,
	-- 			italic = {
	-- 				strings = false,
	-- 				emphasis = false,
	-- 				comments = false,
	-- 				operators = false,
	-- 				folds = false,
	-- 			},
	-- 			strikethrough = true,
	-- 			invert_selection = false,
	-- 			invert_signs = false,
	-- 			invert_tabline = false,
	-- 			invert_intend_guides = false,
	-- 			inverse = true, -- invert background for search, diffs, statuslines and errors
	-- 			contrast = "soft", -- can be "hard", "soft" or empty string
	-- 			palette_overrides = {},
	-- 			overrides = {},
	-- 			dim_inactive = false,
	-- 			transparent_mode = true,
	-- 		})
	-- 		vim.cmd("colorscheme gruvbox")
	-- 	end,
	-- },
	-- "rmehri01/onenord.nvim",
	-- config = function()
	-- 	require("onenord").setup({
	-- 		theme = dark, -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
	-- 		borders = true, -- Split window borders
	-- 		fade_nc = false, -- Fade non-current windows, making them more distinguishable
	-- 		-- Style that is applied to various groups: see `highlight-args` for options
	-- 		styles = {
	-- 			comments = "NONE",
	-- 			strings = "NONE",
	-- 			keywords = "NONE",
	-- 			functions = "NONE",
	-- 			variables = "NONE",
	-- 			diagnostics = "underline",
	-- 		},
	-- 		disable = {
	-- 			background = true, -- Disable setting the background color
	-- 			float_background = true, -- Disable setting the background color for floating windows
	-- 			cursorline = false, -- Disable the cursorline
	-- 			eob_lines = true, -- Hide the end-of-buffer lines
	-- 		},
	-- 		inverse = {
	-- 			match_paren = false,
	-- 		},
	-- 	})
	-- 	vim.cmd("colorscheme onenord")
	-- end,
	--  {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			integrations = {
	-- 				cmp = true,
	-- 				gitsigns = true,
	-- 				nvimtree = true,
	-- 				treesitter = true,
	-- 				notify = false,
	-- 				mini = {
	-- 					enabled = true,
	-- 					indentscope_color = "",
	-- 				},
	-- 			},
	-- 		})
	-- 		vim.cmd("colorscheme catppuccin")
	-- 	end,
	-- }
}
