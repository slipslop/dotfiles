local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato",
            })
            vim.cmd.colorscheme = "catppuccin"
        end,
    },
    "tpope/vim-commentary",
    "sheerun/vim-polyglot",
    "farmergreg/vim-lastplace",
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
               require("user/plugins/treesitter");
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects"
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "BurntSushi/ripgrep",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make"},
            "nvim-tree/nvim-web-devicons",
        },
    },
})
