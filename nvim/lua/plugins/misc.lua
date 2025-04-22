-- Standalone plugins with less than 10 lines of config go here
return {
	{
		"windwp/nvim-ts-autotag",
	},
	{
		"tpope/vim-sleuth",
	},
	{
		"tpope/vim-fugitive",
	},
	{
		"rbong/vim-flog",
		dependencies = {
			"tpope/vim-fugitive",
		},
		lazy = false,
	},
	{
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
		"ricardoramirezr/blade-nav.nvim",
		dependencies = {
			"hrsh7th/nvim-cmp",
		},
		ft = { "blade", "php" },
	},
	{
		"tpope/vim-surround",
	},
}
