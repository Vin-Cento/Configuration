" installing vimplug
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/pluggin')

    Plug 'tpope/vim-commentary'

	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


    Plug 'karb94/neoscroll.nvim'

    Plug 'onsails/lspkind-nvim'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }

    " For ultisnips users.
    Plug 'SirVer/ultisnips'
    Plug 'quangnguyen30192/cmp-nvim-ultisnips'


    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'justinmk/vim-sneak'

    Plug 'norcalli/nvim-colorizer.lua'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes' 

    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

    Plug 'junegunn/goyo.vim'

    Plug 'SirVer/ultisnips' 
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

    Plug 'vimwiki/vimwiki'

    Plug 'nvim-lua/telescope.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    "
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'simrat39/symbols-outline.nvim'


call plug#end()
