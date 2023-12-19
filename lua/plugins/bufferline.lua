return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	keys = {
		{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Buffer" },
		{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev Buffer" },
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				-- 使用 nvim 内置lsp
				diagnostics = "nvim_lsp",
				-- 左侧让出 nvim-tree 的位置
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left",
					},
				},
			},
		})
	end,
}
