return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "gruvbox-material",
				-- theme = "everforest",
				-- theme = "tokyonight",
				icons_enabled = false,
				disabled_filetypes = { "NvimTree" },
			},
			-- tabline = {
			-- 	lualine_a = {
			-- 		{
			-- 			"buffers",
			-- 			separator = { left = "", right = "" },
			-- 			right_padding = 2,
			-- 			symbols = { alternate_file = "" },
			-- 		},
			-- 	},
			-- },
		})
	end,
}

-- vim: ts=2 sts=2 sw=2 et
