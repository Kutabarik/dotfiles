-- Bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    { import = 'user.plugins.onedark' },

    { import = 'user.plugins.vim-commentary' },

    { 'tpope/vim-surround' },

    { 'tpope/vim-sleuth' },

    { 'farmergreg/vim-lastplace' },

    { 'nelstrom/vim-visual-star-search' },

    { 'jessarcher/vim-heritage' },

    { 'whatyouhide/vim-textobj-xmlattr', dependencies = 'kana/vim-textobj-user'  },

    { import = 'user.plugins.vim-rooter' },

    { 'windwp/nvim-autopairs', config = true },

     -- { 'karb94/neoscroll.nvim', config = true },

    { import = 'user.plugins.treesj' },

    { import = 'user.plugins.telescope' },

    { import = 'user.plugins.neo-tree' },

    { import = 'user.plugins.lualine' },

    { import = 'user.plugins.bufferline' },

    { import = 'user.plugins.indent-blankline' },

    { import = 'user.plugins.dashboard-nvim' },

    { import = 'user.plugins.gitsigns' },

    { 'tpope/vim-fugitive', dependencies = 'tpope/vim-rhubarb' },

    { import = 'user.plugins.floaterm' },

    { import = 'user.plugins.treesitter' },

    { import = 'user.plugins.cmp' },

    { import = 'user.plugins.lspconfig' },

    {'epilande/vim-es2015-snippets'},

    {'epilande/vim-react-snippets'},

    {'SirVer/ultisnips'},

    { "rafamadriz/friendly-snippets" },

    { import = 'user.plugins.phpactor' },
})
