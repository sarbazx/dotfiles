call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-rails'
Plug 'chankaward/vim-railscasts-theme'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'tomtom/tlib_vim'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'tpope/vim-commentary'
Plug 'https://github.com/posva/vim-vue.git'
Plug 'https://github.com/vim-ruby/vim-ruby.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/henrik/vim-ruby-runner.git'
Plug 'https://github.com/Shougo/neocomplete.vim.git'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'sbdchd/neoformat'
call plug#end()
set term=gnome-256color
colorscheme railscasts
set background=dark
hi clear
if exists("syntax_on")
	  syntax reset
  endif

  let g:colors_name = "railscasts"

  hi link htmlTag                     xmlTag
  hi link htmlTagName                 xmlTagName
  hi link htmlEndTag                  xmlEndTag

  highlight Normal                    guifg=#E6E1DC guibg=#111111 
  highlight Cursor                    guifg=#000000 ctermfg=0 guibg=#FFFFFF ctermbg=15	
  highlight CursorLine                guibg=#000000 ctermbg=233 cterm=NONE

  highlight Comment                   guifg=#BC9458 ctermfg=180 gui=italic
  highlight Constant                  guifg=#6D9CBE ctermfg=73
  highlight Define                    guifg=#CC7833 ctermfg=173
  highlight Error                     guifg=#FFC66D ctermfg=221 guibg=#990000 ctermbg=88
  highlight Function                  guifg=#FFC66D ctermfg=221 gui=NONE cterm=NONE
  highlight Identifier                guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
  highlight Include                   guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
  highlight PreCondit                 guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
  highlight Keyword                   guifg=#CC7833 ctermfg=173 cterm=NONE
  highlight LineNr                    guifg=#2B2B2B ctermfg=159 guibg=#C0C0FF
  highlight Number                    guifg=#A5C261 ctermfg=107
  highlight PreProc                   guifg=#E6E1DC ctermfg=103
  highlight Search                    guifg=NONE ctermfg=NONE guibg=#2b2b2b ctermbg=235 gui=italic cterm=underline
  highlight Statement                 guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
  highlight String                    guifg=#A5C261 ctermfg=107
  highlight Title                     guifg=#FFFFFF ctermfg=15
  highlight Type                      guifg=#DA4939 ctermfg=167 gui=NONE cterm=NONE
  highlight Visual                    guibg=#5A647E ctermbg=60

  highlight DiffAdd                   guifg=#E6E1DC ctermfg=7 guibg=#519F50 ctermbg=71
  highlight DiffDelete                guifg=#E6E1DC ctermfg=7 guibg=#660000 ctermbg=52
  highlight Special                   guifg=#DA4939 ctermfg=167 

  highlight pythonBuiltin             guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
  highlight rubyBlockParameter        guifg=#FFFFFF ctermfg=15
  highlight rubyClass                 guifg=#FFFFFF ctermfg=15
  highlight rubyConstant              guifg=#DA4939 ctermfg=167
  highlight rubyInstanceVariable      guifg=#D0D0FF ctermfg=189
  highlight rubyInterpolation         guifg=#519F50 ctermfg=107
  highlight rubyLocalVariableOrMethod guifg=#D0D0FF ctermfg=189
  highlight rubyPredefinedConstant    guifg=#DA4939 ctermfg=167
  highlight rubyPseudoVariable        guifg=#FFC66D ctermfg=221
  highlight rubyStringDelimiter       guifg=#A5C261 ctermfg=143

  highlight xmlTag                    guifg=#E8BF6A ctermfg=179
  highlight xmlTagName                guifg=#E8BF6A ctermfg=179
  highlight xmlEndTag                 guifg=#E8BF6A ctermfg=179

  highlight mailSubject               guifg=#A5C261 ctermfg=107
  highlight mailHeaderKey             guifg=#FFC66D ctermfg=221
  highlight mailEmail                 guifg=#A5C261 ctermfg=107 gui=italic cterm=underline

  highlight SpellBad                  guifg=#D70000 ctermfg=160 ctermbg=NONE cterm=underline
  highlight SpellRare                 guifg=#D75F87 ctermfg=168 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  highlight SpellCap                  guifg=#D0D0FF ctermfg=189 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  highlight MatchParen                guifg=#FFFFFF ctermfg=15 guibg=#005f5f ctermbg=23

  " The Silver Searcher
   if executable('ag')
  "   " Use ag over grep
     set grepprg=ag\ --nogroup\ --nocolor
        
  " Use ag in CtrlP for listing files. Lightning fast and respects
  "        .gitignore
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
   
    " ag is fast enough that CtrlP doesn't need to cache
       let g:ctrlp_use_caching = 0
  endif

  nnoremap \ :Ag<SPACE>
set expandtab ts=4 sw=4 ai
set nocompatible

map <C-\> :NERDTreeToggle<CR>
set number
filetype plugin indent on 
set guioptions-=m
set guioptions-=T
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
