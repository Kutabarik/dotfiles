return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	cmd = { "ConformInfo" },
	config = function()
		local conform = require("conform")
		local prettier = { "prettierd", "prettier", stop_after_first = true }
		conform.setup({
			default_format_opts = {
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				css = prettier,
				html = prettier,
				javascript = prettier,
				vue = prettier,
				json = prettier,
				lua = { "stylua" },
				php = { "pint" },
				typescript = prettier,
				yaml = prettier,
				blade = { "blade-formatter" },
			},
			formatters = {
				astyle = {
					command = "astyle",
					prepend_args = { "-s2", "-c", "-J", "-n", "-q", "-z2", "-xC80" },
				},
				prettier = {
					command = "prettier",
					prepend_args = { "-w" },
				},
				prettierd = {
					command = "prettierd",
					prepend_args = { "-w" },
				},
			},
		})
	end,
	keys = {
		{
			"<leader>rf",
			function()
				require("conform").format({ async = true })
			end,
			desc = "format buffer",
		},
	},
}
