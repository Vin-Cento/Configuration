" installing vimplug
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/pluggin')

	Plug 'ghifarit53/tokyonight-vim'

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'dense-analysis/ale'

	Plug 'rust-lang/rust.vim'
	
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'justinmk/vim-sneak'

	Plug 'preservim/nerdtree' 
	Plug 'mhinz/vim-startify'

	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'sheerun/vim-polyglot'

	Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes' 

	Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

	Plug 'junegunn/goyo.vim'

	Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

call plug#end()
