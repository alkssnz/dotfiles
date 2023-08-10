set number
set nowrap
set showcmd
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set smartindent
set laststatus=2
set t_Co=256
set wildmenu
set wildmode=full
set ai
set backspace=indent,eol,start

"syntax enable

"inoremap <C-j> <Esc><Down><Insert>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

nnoremap <C-n> <Down><C-e>
nnoremap <C-p> <Up><C-y>

execute "set <A-b>=\eb"
inoremap <A-b> <C-o>b
execute "set <A-f>=\ef"
inoremap <A-f> <C-o>w

"inoremap <C-h> <C-o>X
"inoremap <C-d> <C-o>x
"inoremap <C-h> <Left><Del>
inoremap <C-d> <Del>

"inoremap <C-w> <C-o>db
execute "set <A-d>=\ed"
inoremap <A-d> <C-o>dw

inoremap <C-a> <C-o>0
inoremap <C-e> <C-o>$
"inoremap <C-u> <C-o>d0
inoremap <C-l> <C-o>dd

execute "set <A-.>=\e."
nnoremap <A-.> g;
execute "set <A-,>=\e,"
nnoremap <A-,> g,

execute "set <A-m>=\em"
nnoremap <A-m> `.

execute "set <A-y>=\ey"
nnoremap <A-y> "+y
vnoremap <A-y> "+y

execute "set <A-p>=\ep"
nnoremap <A-p> "0P
inoremap <A-p> <Esc>"0P

execute "set <A-o>=\eo"
nnoremap <A-o> :Files<cr>
nnoremap <Leader>o :Files<cr>

execute "set <A-t>=\et"
nnoremap <A-t> :Buffers<cr>
nnoremap <Leader>t :Buffers<cr>

execute "set <A-b>=\eb"
nnoremap <A-b> :Buffers<cr>
nnoremap <Leader>b :Buffers<cr>

execute "set <A-p>=\ep"
nnoremap <A-p> :History<cr>
nnoremap <Leader>p :History<cr>

execute "set <A-r>=\er"
nnoremap <A-r> :History:<cr>
nnoremap <Leader>r :History:<cr>

execute "set <A-s>=\es"
nnoremap <A-s> :History/<cr>
nnoremap <Leader>s :History/<cr>

execute "set <A-p>=\ep"
nnoremap <A-p> :History<cr>
nnoremap <Leader>p :History<cr>

execute "set <A-l>=\el"
nnoremap <A-l> :Marks<cr>
nnoremap <Leader>l :Marks:<cr>

execute "set <A-c>=\ec"
nnoremap <A-c> :lcd %:h<cr>
nnoremap <C-_> :NERDTree<cr>
nnoremap <C-]> :bnext<cr>
nnoremap <C-w><C-w> :bd<cr>

noremap <C-Return> O

call plug#begin('~/.vim/plugged')

Plug '~/.fzf'
Plug '~/.vim/plugins/fzf.vim'
Plug '~/.vim/plugins/ferret'
Plug '~/.vim/plugins/nerdtree'
Plug '~/.vim/plugins/syntastic'
Plug '~/.vim/plugins/vim-airline'

call plug#end()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline#extensions#tabline#enabled = 1

