set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nowrap
set expandtab
set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set incsearch
set scrolloff=8
set signcolumn=yes
set mouse=a

" lightline dependent
set laststatus=2
set noshowmode

" open configuration files
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/maps.vim
so ~/.config/nvim/plug-config/coc.vim

"theme
colorscheme dracula
let g:lightline = {
  \ 'colorscheme': 'dracula'
\}

" transparency
"hi Normal guibg=none ctermbg=none
"hi LineNr guibg=none ctermbg=none
"hi Folded guibg=none ctermbg=none
"hi NonText guibg=none ctermbg=none
"hi SpecialKey guibg=none ctermbg=none
"hi VertSplit guibg=none ctermbg=none
"hi SignColumn guibg=none ctermbg=none
"hi EndOfBuffer guibg=none ctermbg=none


