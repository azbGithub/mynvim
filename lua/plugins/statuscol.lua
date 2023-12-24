-- FIX: no action
return {
	"luukvbaal/statuscol.nvim",
	event = { "BufRead", "BufNew" },
	config = function()
		require("statuscol").setup()
	end,
}
