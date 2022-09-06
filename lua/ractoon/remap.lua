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

-- PHP CS Fixer
-- command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
nnoremap("<C-s>", "<cmd><esc>:w<cr>:Silent php-cs-fixer fix %:p --level=symfony<cr></cmd>")

-- php refactoring toolbox
nnoremap("<leader>rlv", "<cmd>:call PhpRenameLocalVariable()<cr>")
nnoremap("<leader>rcv", "<cmd>:call PhpRenameClassVariable()<cr>")
nnoremap("<leader>rrm", "<cmd>:call PhpRenameMethod()<cr>")
nnoremap("<leader>reu", "<cmd>:call PhpExtractUse()<cr>")
nnoremap("<leader>rec", "<cmd>:call PhpExtractConst()<cr>")
nnoremap("<leader>rep", "<cmd>:call PhpExtractClassProperty()<cr>")
nnoremap("<leader>rnp", "<cmd>:call PhpCreateProperty()<cr>")
nnoremap("<leader>rdu", "<cmd>:call PhpDetectUnusedUseStatements()<cr>")
nnoremap("<leader>rsg", "<cmd>:call PhpCreateSettersAndGetters()<cr>")

-- PHP Actor
-- context-aware menu with all functions (ALT-m)
nnoremap("<m-m>", "<cmd>:call phpactor#ContextMenu()<cr>")

nnoremap("gd", "<cmd>:call phpactor#GotoDefinition()<cr>")
nnoremap("gr", "<cmd>:call phpactor#FindReferences()<cr>")

-- PHP Namespace Handling
nnoremap("<Leader>u", "<cmd>:PHPImportClass<cr>")
nnoremap("<Leader>e", "<cmd>:PHPExpandFQCNAbsolute<cr>")
nnoremap("<Leader>E", "<cmd>:PHPExpandFQCN<cr>")

-- NERDTree
-- nnoremap ("<leader>n", "<cmd>:NERDTreeFocus<cr>")
-- nnoremap ("<C-n>", "<cmd>:NERDTree<cr>")
-- nnoremap ("<C-t>", "<cmd>:NERDTreeToggle<cr>")
-- nnoremap ("<C-f>", "<cmd>:NERDTreeFind<cr>")
