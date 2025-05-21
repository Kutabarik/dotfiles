return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"javascript",
			"typescript",
			"sql",
			"dockerfile",
			"json",
			"go",
			"gitignore",
			"yaml",
			"markdown",
			"markdown_inline",
			"bash",
			"tsx",
			"css",
			"scss",
			"html",
			"php",
			"blade",
		},
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
		playground = {
			enable = true,
			updatetime = 25,
			persist_queries = false,
		},
		autotag = {
			enable = true,
			enable_rename = true,
			enable_close = true,
			enable_close_on_slash = true,
		},
		context_commentstring = {
			enable = true,
			config = {
				javascriptreact = {
					style_element = "{/*%s*/}",
				},
			},
		},
		refactor = {
			highlight_definitions = { enable = true },
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<Leader>,s",
				node_incremental = "<Leader>,s",
				scope_incremental = "<Leader>,c",
				node_decremental = "<Leader>,d",
			},
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)

		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.blade = {
			install_info = {
				url = "https://github.com/EmranMR/tree-sitter-blade",
				files = { "src/parser.c" },
				branch = "main",
			},
			filetype = "blade",
		}

		vim.filetype.add({
			pattern = {
				[".*%.blade%.php"] = "php",
			},
		})

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
			pattern = { "*.norg" },
			command = "set conceallevel=3",
		})
	end,
}
