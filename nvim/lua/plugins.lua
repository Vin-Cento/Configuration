-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself use
    use "goolord/alpha-nvim"
    use "mfussenegger/nvim-lint"
    use 'mfussenegger/nvim-dap'

    use 'wbthomason/packer.nvim'

    use 'voldikss/vim-floaterm'
    use 'lewis6991/impatient.nvim'
    use 'terrortylor/nvim-comment'
    use 'kyazdani42/nvim-tree.lua'
    use 'yashguptaz/calvera-dark.nvim'

end)
