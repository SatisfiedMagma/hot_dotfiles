return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		require("tokyonight").setup({
			style = "night",
			styles = {
				functions = {},
			},
			on_colors = function(colors)
				colors.bg = "#151520"
			end,
		}),
	},
	{ "Shatur/neovim-ayu", priority = 1000 },

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "tokyonight", -- or "ayu-mirage"
					section_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
					icons_enabled = true,
					globalstatus = true, -- nice full-width bar
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch" },
					lualine_c = { "filename" },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},
}
