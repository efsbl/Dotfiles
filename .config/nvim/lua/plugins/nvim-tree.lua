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
	end,
}
