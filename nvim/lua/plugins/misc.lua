-- Standalone plugins with less than 10 lines of config go here
return {
	{
		-- autoclose tags
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup({
				aliases = {
					["php"] = "html",
					["blade"] = "html",
					["vue"] = "html",
				},
			})
		end,
	},
	{
		-- Powerful Git integration for Vim
		"tpope/vim-fugitive",
	},
	{
		-- Autoclose parentheses, brackets, quotes, etc.
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {},
	},
	{
		-- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		-- high-performance color highlighter
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"Exafunction/codeium.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({})
		end,
	},
}
