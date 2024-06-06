require('telescope').setup({
    pickers = {
        find_files = {
            find_command = { 'rg', '--files', '--hidden', '--no-ignore', '--glob', '!.git/', '--glob', '!node_modules/', '--glob', '!*.svg' }
        },
    },
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fm', function()
  builtin.lsp_document_symbols({ symbols = { 'Function', 'Method' } })
end, {})
