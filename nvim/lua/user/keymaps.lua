-- Space is my leader.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Quickly clear search highlighting.
vim.keymap.set('n', '<leader>k', ':nohlsearch<CR>')

-- Close all open buffers.
vim.keymap.set('n', '<leader>Q', ':bufdo bdelete<CR>')

-- vim.keymap.set('n', '<leader>x', ':bdelete<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')

-- Allow gf to open non-existent files.
vim.keymap.set('', 'gf', ':edit <cfile><CR>')

-- Reselect visual selection after indenting.
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Maintain the cursor position when yanking a visual selection.
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set('v', 'y', 'myy`y')
vim.keymap.set('v', 'Y', 'myY`y')

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided.
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Paste replace visual selection without copying it.
vim.keymap.set('v', 'p', '"_dP')

-- Easy insertion of a trailing ; or , from insert mode.
vim.keymap.set('i', ';;', '<Esc>A;<Esc>')
vim.keymap.set('i', ',,', '<Esc>A,<Esc>')
vim.keymap.set('i', 'jj', '<Esc>')

-- Open the current file in the default program (on Mac this should just be just `open`).
-- vim.keymap.set('n', '<leader>x', ':!xdg-open %<cr><cr>')

-- Disable annoying command line thing.
vim.keymap.set('n', 'q:', ':q<CR>')

-- Buffer cycle
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')

-- Toggle files tree
vim.keymap.set('n', '<leader>n', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

-- Toggle terminal
vim.keymap.set('n', '<leader>t', ':FloatermToggle<CR>')
vim.keymap.set('t', '<F1>', '<C-\\><C-n>:FloatermToggle<CR>')

-- Format selection
vim.keymap.set("v", "<leader>qf", vim.lsp.buf.format, { remap = false })
