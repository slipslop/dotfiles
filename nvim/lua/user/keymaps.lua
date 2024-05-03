local keymap = vim.keymap

-- map k and j to gk and gj, in normal mode, if count is 0:
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Reselect the visual after indenting
keymap.set('v', '<', '<gv')
keymap.set('v', '>', '>gv')

-- Maintain the cursor position when yanking a visual selection
keymap.set('v', 'y', 'myy`y')

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })

keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper split" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to split below" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to split right" })
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to split left" })
