return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"	██╗    ██╗██╗  ██╗██╗   ██╗███╗   ██╗██╗   ██╗██╗███╗   ███╗	",
			"	██║    ██║██║  ██║╚██╗ ██╔╝████╗  ██║██║   ██║██║████╗ ████║	",
			"	██║ █╗ ██║███████║ ╚████╔╝ ██╔██╗ ██║██║   ██║██║██╔████╔██║	",
			"	██║███╗██║██╔══██║  ╚██╔╝  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║	",
			"	 ███╔███╔╝██║  ██║   ██║   ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║	",
			"	 ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝	",
			"									 No.1  Vim motions														",
			"								 No.2  Plugin ecosystem													",
			"							 No.3  Everything is configurable									",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		dashboard.section.footer.val = {
			"🧊 Hope that you enjoy using Nvim 😀😀😀",
			"			https://github.com/azbGithub			 ",
		}
		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
