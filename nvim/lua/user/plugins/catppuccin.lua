require("catppuccin").setup({
    flavour = "macchiato",
})

vim.cmd.colorscheme "vim" -- restore nvim 0.9.5 functionality. TODO: remove when catppuccin is updated
vim.cmd.colorscheme "catppuccin"