local nnoremap = require("ractoon.keymap").nnoremap

-- netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<C-h>", ":bprev<cr>")
nnoremap("<C-l>", ":bnext<cr>")


-- Telescope
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fs", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
nnoremap("<D-j>", "<cmd>:terminal<cr>")

-- NERDTree
-- nnoremap ("<leader>n", "<cmd>:NERDTreeFocus<cr>")
-- nnoremap ("<C-n>", "<cmd>:NERDTree<cr>")
-- nnoremap ("<C-t>", "<cmd>:NERDTreeToggle<cr>")
-- nnoremap ("<C-f>", "<cmd>:NERDTreeFind<cr>")
