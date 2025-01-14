-- Set leader key to Space
vim.g.mapleader = " "


local keymap = vim.keymap

-- Enable highlighting search matches
vim.o.hlsearch = true

-- Insert Mode Mappings
keymap.set('i', 'fj', '<ESC>', { desc = "Exit insert mode", noremap = true, silent = true })

-- Normal Mode Mappings
keymap.set('n', 'J', '5j', { desc = "Down 5 lines", noremap = true, silent = true })
keymap.set('n', 'K', '5k', { desc = "Up 5 lines", noremap = true, silent = true })
keymap.set('n', '<leader>j', 'J', { desc = "Join lines", noremap = true, silent = true })
keymap.set('n', '<leader>k', 'K', { desc = "", noremap = true, silent = true })
-- keymap.set('n', '<leader>H', '<C-w>h', { desc = "Goto left pane", noremap = true, silent = true })
-- keymap.set('n', '<leader>J', '<C-w>j', { desc = "Goto below pane", noremap = true, silent = true })
-- keymap.set('n', '<leader>K', '<C-w>k', { desc = "Goto above pane", noremap = true, silent = true })
-- keymap.set('n', '<leader>L', '<C-w>l', { desc = "Goto right pane", noremap = true, silent = true })
keymap.set('n', '<C-j>', '<C-d>zz', { desc = "Down a page", noremap = true, silent = true })
keymap.set('n', '<C-k>', '<C-u>zz', { desc = "Up a page", noremap = true, silent = true })
keymap.set('n', '<leader>to', ':tabo<CR>', { desc = "", noremap = true, silent = true })
keymap.set('n', '<leader>/', ':noh<CR>', { desc = "Clear highlighting", noremap = true, silent = true })
keymap.set('n', '<leader><CR>', ':noh<CR>', { desc = "", noremap = true, silent = true })
keymap.set('n', '<C-m>', 'gc', { desc = "Comment", noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>q', ':call VSCodeNotify("workbench.action.closeActiveEditor")<CR>', { desc = "", noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>tn', ':call VSCodeNotify("workbench.action.files.newUntitledFile")<CR>', { desc = "", noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>.', ':call VSCodeNotify("workbench.action.nextEditor")<CR>', { desc = "", noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>,', ':call VSCodeNotify("workbench.action.previousEditor")<CR>', { desc = "", noremap = true, silent = true })

-- Harpoon plugin mappings (requires the harpoon plugin)
-- keymap.set('n', '<leader>hj', ':lua require("harpoon.mark").add_file()<CR>', { desc = "", noremap = true, silent = true })
-- keymap.set('n', '<leader>he', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = "", noremap = true, silent = true })
-- keymap.set('n', '<leader>hw', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = "", noremap = true, silent = true })
-- keymap.set('n', '<leader>ha', ':lua require("harpoon.ui").nav_file(1)<CR>', { desc = "", noremap = true, silent = true })
-- keymap.set('n', '<leader>hs', ':lua require("harpoon.ui").nav_file(2)<CR>', { desc = "", noremap = true, silent = true })
-- keymap.set('n', '<leader>hd', ':lua require("harpoon.ui").nav_file(3)<CR>', { desc = "", noremap = true, silent = true })
-- keymap.set('n', '<leader>hf', ':lua require("harpoon.ui").nav_file(4)<CR>', { desc = "", noremap = true, silent = true })
-- keymap.set('n', '<leader>hg', ':lua require("harpoon.ui").nav_file(5)<CR>', { desc = "", noremap = true, silent = true })

-- Custom repetitive actions
-- vim.api.nvim_set_keymap('n', '3vib', 'f(;vi(b', { desc = "", noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '2cib', 'f(;ci(b', { desc = "", noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '3cib', 'f(;;ci(b', { desc = "", noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '2vib', 'f(;vi(b', { desc = "", noremap = true, silent = true })

-- Visual Mode Mappings
keymap.set('v', 'J', '5j', { desc = "Down 5 lines", noremap = true, silent = true })
keymap.set('v', 'K', '5k', { desc = "Up 5 lines", noremap = true, silent = true })
keymap.set('v', '<C-j>', '<C-d>zz', { desc = "Down a page", noremap = true, silent = true })
keymap.set('v', '<C-k>', '<C-u>zz', { desc = "Up a page", noremap = true, silent = true })
keymap.set('v', '<leader>y', '"+y', { desc = "Copy into clipboard", noremap = true, silent = true })
keymap.set('v', '<leader>p', '"_dP', { desc = "Paste into void reg", noremap = true, silent = true })
keymap.set('v', '<leader>d', '"_d', { desc = "Delete into void reg", noremap = true, silent = true })

-- Splits
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab


-- automation
keymap.set("n", "<A-k>", "<cmd>make<CR>", { desc = "Run make file" }) --  go to previous tab

