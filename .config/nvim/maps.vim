let mapleader = " "

" ------------------------------------------VimCommands-----------------------------------------------------------------------
" Quit and save quickly
nnoremap q :q<CR>
nnoremap w :w<CR>

" List buffers and types name.
nnoremap <leader>b :ls<CR>:buffer<space>

" Create a vertical split window and go to buffer selection.
nnoremap <leader>v <C-w>v<C-w>l:ls<CR>:buffer<space>
" Create a horizontal split window and go to buffer selection.
nnoremap <leader>m <C-w>s<C-w>k:ls<CR>:buffer<space>
" Create a new vertical window.
nnoremap <leader>V :vsplit<space>
"Create a new horizontal window.
nnoremap <leader>M :split<space>

" Create a new tab.
nnoremap <leader>t :tabnew<space>
" Close current tab.
nnoremap <leader>T :tabclose<CR>
" --------------------------------------------NERDTree-----------------------------------------------------------------------
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Toggle NERDTree 
nnoremap <leader>n :NERDTreeToggle<CR>
" -----------------------------------------------FZF-------------------------------------------------------------------------
" Start fzf.
nnoremap <C-p> :Files<CR>
