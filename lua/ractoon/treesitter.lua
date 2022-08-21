require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'css', 'dart', 'elixir', 'go', 'html', 'javascript', 'json', 'php', 'scss', 'sql', 'typescript', 'vue', 'yaml' },
    sync_install = true,
    highlight = {
        enable = true,
    },
}
