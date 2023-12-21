return {
	"folke/todo-comments.nvim",
	event = "BufRead",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("todo-comments").setup()
	end,
	keys = {
		{ "<leader>ut", ":TodoTelescope<CR>", desc = "todo list", silent = true, noremap = true },
	},
}
