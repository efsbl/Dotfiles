return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				-- theme = "gruvbox-material",
				-- theme = "everforest",
				-- theme = "tokyonight",
				icons_enabled = false,
				disabled_filetypes = { "NvimTree" },
			},
			-- tabline = {
			-- 	lualine_a = { "buffers" },
			-- 	lualine_b = { "branch" },
			-- 	lualine_c = { "filename" },
			-- 	lualine_x = {},
			-- 	lualine_y = {},
			-- 	lualine_z = { "tabs" },
			-- },
		})
	end,
}

-- vim: ts=2 sts=2 sw=2 et
