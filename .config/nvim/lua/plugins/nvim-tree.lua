return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({})
		vim.keymap.set("n", "<leader>pv", "<cmd>NvimTreeToggle<CR>", { desc = "[P]royect [V]iew" })
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
	end,
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
