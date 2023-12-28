require('nvim-tree').setup({
    git = {
        ignore = false,
    },
    renderer = {
        group_empty = true,
        indent_markers = {
            enable = true,
        },
    },
})

vim.keymap.set('n', '<Leader>n', ':NvimTreeFindFileToggle<CR>');
