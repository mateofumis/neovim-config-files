call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

Plug 'junegunn/limelight.vim'

Plug 'junegunn/goyo.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ryanoasis/vim-devicons'

Plug 'sheerun/vim-polyglot'

Plug 'pangloss/vim-javascript'

Plug 'ap/vim-css-color'

Plug 'itchyny/lightline.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'joshdick/onedark.vim'

call plug#end()


autocmd!

set nocompatible
set number
syntax enable
set fileencoding=utf-8
set encoding=utf-8
set title
set mouse=a
set autoindent

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-css',
  \  'coc-eslint',
  \  'coc-prettier'
  \ ]



autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


nnoremap <silent> K :call CocAction('doHover')<CR>


"function! s:show_hover_doc()
"  call timer_start(500, 'ShowDocIfNoDiagnostic')
"endfunction


"autocmd CursorHoldI * :call <SID>show_hover_doc()
"autocmd CursorHold * :call <SID>show_hover_doc()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

nmap <leader>do <Plug>(coc-codeaction)

nmap <leader>rn <Plug>(coc-rename)
