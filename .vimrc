

" autoload _vimrc
autocmd! bufwritepost .vimrc source %

" disable VI's compatible mode..
set nocompatible

let &termencoding=&encoding
set fileencodings=ucs-bom,utf-8,gbk,default,latin1

"set gui options
if has("gui_running")
  set guifont=Consolas:h9
endif

set t_Co=256
"colorscheme soruby
colorscheme calmar256-dark
"colorscheme aqua
"colorscheme spring
"colorscheme buttercream

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" my configure
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set noimdisable
set iminsert=0
set imsearch=0
set noswapfile
" config it for change buffer without save it when changed
set hidden "in order to switch between buffers with unsaved change
map <silent><F8> :NERDTree<CR>

set nu
"set showmatch

map <tab> :tabn<CR>
let g:user_zen_settings = {
      \  'indentation' : '  '
      \}
let g:indent_guides_guide_size = 1

" hightlight col and line
set cursorline
"set cursorcolumn

if has("gui_running")
  colorscheme desert
  set bs=2
  set ruler
  set gfn=Monaco:h16
  set shell=/bin/bash
endif

let mapleader= ","
" EasyMotion_leader_key .
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'mattn/zencoding-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/The-NERD-Commenter'
" indent guides
"Bundle 'nathanaelkane/vim-indent-guides'
" indent guides shortcut
map <silent><F7>  <leader>ig

Bundle 'scrooloose/nerdtree'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
map <c-t> :FufCoverageFile!<CR>
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|db/migrate|vendor)'
let g:fuf_enumeratingLimit = 50
let g:fuf_coveragefile_prompt = '=>'
" non github repos
" if you like it more than fuf, uncomment here
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"
"
map <F8> :NERDTreeToggle<cr>

"输入<%= %>
"map ,ff i<%= %><Esc>hhi 
":inoremap ,ff <%= %><Esc>hhi 
map ,ff i<?php echo ?><Esc>hhi 
:inoremap ,ff <?php echo ?><Esc>hhi 
"map ,tt i<% %><Esc>hhi 
":inoremap ,tt <% %><Esc>hhi 
":inoremap <A-<> []i  

"增加ruby gem tags文件
"set tags+=~/.rvm/gems/ruby-1.9.3-p392@rails313tutorials2ndEd/ruby.tags
"set tags+=~/.rvm/gems/ruby-2.0.0-p0@refinerycms/tags
"set tags+=/home/xiaofei/.rvm/rubies/ruby-2.0.0-p0/tags


"php 语法支持
Bundle 'shawncplus/php.vim'
"php语法检查
"Bundle 'joonty/vim-phpqa.git'
"autocmd FileType php set omnifunc=phpcomplete

"对齐线支持
Bundle 'nathanaelkane/vim-indent-guides'
"自定义配色方案
"配色方案
Bundle 'vim-scripts/inkpot'
colorscheme inkpot

let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"hi IndentGuidesOdd  guibg=red   ctermbg=3
"hi IndentGuidesEven guibg=green ctermbg=4
"把当前光标下的行和列高亮
set cuc
set ts=2 sw=2 et
let g:indent_guides_start_level = 2


