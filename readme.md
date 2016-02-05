# sky

A color scheme for neovim.

~/.config/nvim/plugins.vim
```vim
" Recommended: vim-plug
call plug#begin('~/.vim/plugged')

" Install sky color scheme.
Plug 'ninja/sky'

" Recommended: sky supports airline.
Plug 'vim-airline/vim-airline'

" Recommended: JavaScript highlighting.
Plug 'pangloss/vim-javascript'

" Recommended: icons increase fidelity.
Plug 'ryanoasis/vim-devicons'

call plug#end()
```

~/.config/nvim/init.vim
```vim
" Recommended: configure plugins in a separate file.
source $HOME/.config/nvim/plugins.vim

" Recommended: 24bit colors.
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Set color scheme to sky.
colorscheme sky

" Recommended: continuous vertical split line.
set fillchars=vert:\│

" Recommended: Set airline theme to sky.
let g:airline_theme='sky'

" Recommended: remove powerline separaters (text can't be transparent).
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep=''

" Recommended: simplify mode label to a single character.
let g:airline_mode_map = {'__': '-', 'n': 'N', 'i': 'I', 'R': 'R', 'c': 'C', 'v': 'V', 'V': 'V', '': 'V', 's': 'S', 'S': 'S', '': 'S'}
```

