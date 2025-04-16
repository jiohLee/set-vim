# vim configuration
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cat << 'EOF' > ~/.vimrc
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle plugin manager
Plugin 'VundleVim/Vundle.vim'

" editor environment
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'

" colorscheme
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

call vundle#end()
filetype plugin indent on
EOF

vim +PluginInstall +qall

cat << 'EOF' >> ~/.vimrc

set nu
set ts=4
set sw=4
set ls=2
set cindent

set t_Co=256
syntax on

" set colorscheme
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
highlight Normal ctermfg = white ctermbg = NONE
highligh LineNr ctermbg = NONE

" set NERDTree
nmap <C-b> :NERDTreeToggle<CR>
nnoremap <Esc>[1;5C :tabnext<CR>
nnoremap <Esc>[1;5D :tabprevious<CR>

" set UltiSnips
let g:UltiSnipsExpandTrigger='<C-a>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']
EOF

cp -r snippets ~/.vim/bundle/vim-snippets/

source $HOME/.bashrc
