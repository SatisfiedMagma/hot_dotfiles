return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			local themes = require("telescope.themes")

			telescope.setup({
				defaults = themes.get_dropdown({
					previewer = false,
					width = 0.6,
					height = 0.5,
					prompt_position = "top",
					initial_mode = "insert",
				}),
			})

			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<C-f>", builtin.live_grep)
			vim.keymap.set("n", "<C-b>", builtin.buffers)
		end,
	},
}
