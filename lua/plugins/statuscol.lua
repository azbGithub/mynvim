-- FIX: no action
return {
	"luukvbaal/statuscol.nvim",
	event = "VeryLazy",
	config = function()
		require("statuscol").setup()
	end,
}
