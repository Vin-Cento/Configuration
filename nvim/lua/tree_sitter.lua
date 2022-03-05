require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {
    'python'
  },

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    additional_vim_regex_highlighting = false,
  },
}
