call plug#begin('~/.config/plugged')

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'itchyny/lightline.vim'

" themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" tree
Plug 'scrooloose/nerdtree'

" typing 
Plug 'jiangmiao/auto-pairs' 
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" tmux
Plug 'preservim/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" test
Plug 'tyewang/vimux-jest-test'
Plug 'vim-test/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" harpoon
Plug 'nvim-lua/plenary.nvim' 
Plug 'ThePrimeagen/harpoon'

" others
Plug 'tpope/vim-repeat'

call plug#end()
