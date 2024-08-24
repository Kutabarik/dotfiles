require "nvchad.options"

-- add yours here!
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true
vim.opt.number = true

vim.opt.relativenumber = true
vim.opt.title = true

-- vim.opt.termguicolors = false
vim.opt.spell = true
vim.opt.ignorecase = true
vim.opt.breakindent = true -- maintain indent when wrapping indented lines
vim.opt.linebreak = true -- wrap at word boundaries
vim.opt.fillchars:append({ eob = ' ' }) -- remove the ~ from end of buffer
vim.opt.mouse = 'a' -- enable mouse for all modes
vim.opt.mousemoveevent = true -- Allow hovering in bufferline
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.signcolumn = 'yes:2'
vim.opt.clipboard = 'unnamedplus' -- Use Linux system clipboard
vim.opt.confirm = true -- ask for confirmation instead of erroring
vim.opt.undofile = true -- persistent undo
vim.opt.backup = true -- automatically save a backup file
vim.opt.backupdir:remove('.') -- keep backups out of the current directory
vim.opt.shortmess:append({ I = true }) -- disable the splash screen
vim.opt.wildmode = 'longest:full,full' -- complete the longest common match, and allow tabbing the results to fully complete them
vim.opt.showmode = false
vim.opt.updatetime = 4001 -- Set updatime to 1ms longer than the default to prevent polyglot from changing it
vim.opt.redrawtime = 10000 -- Allow more time for loading syntax on large files
vim.opt.exrc = true
vim.opt.secure = true
vim.opt.titlestring = '%t'
