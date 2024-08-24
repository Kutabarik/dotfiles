require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })

map('i', ';;', '<Esc>A;<Esc>')
map('i', ',,', '<Esc>A,<Esc>')
map('i', 'jj', '<Esc>')

map('n', '<leader>k', ':nohlsearch<CR>')

-- dont copy on paste
map('v', 'p', '"_dP')

map("n", "<leader>gl", ":Flog<CR>", { desc = "Git Log" })
map("n", "<leader>gf", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
map("n", "<leader>gc", ":DiffviewOpen HEAD~1<CR>", { desc = "Git Last Commit" })
map("n", "<leader>gt", ":DiffviewToggleFile<CR>", { desc = "Git File History" })

map("n", "<ledaer>td", ":TodoQuickFix<CR>", { desc = "Todo Quickfix" })
map("n", "<ledaer>tf", ":TodoTelescope<CR>")

map('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')


-- Reselect visual selection after indenting.
map('v', '<', '<gv')
map('v', '>', '>gv')

map("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })
