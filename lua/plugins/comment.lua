return {
	"numtostr/Comment.nvim",
	event = "BufRead",
	lazy = false,
	config = function()
		require("Comment").setup()
		vim.keymap.del("n", "gcc")
		vim.keymap.del("n", "gbc")
		vim.keymap.del("n", "gc")
		vim.keymap.del("n", "gb")
		vim.keymap.del("x", "gc")
		vim.keymap.del("x", "gb")
		vim.keymap.del("n", "gcO")
		vim.keymap.del("n", "gco")
		vim.keymap.del("n", "gcA")
	end,
}
