"### pluginColors ###
colorscheme badwolf
syntax enable
set background=dark

"### Spaces & Tabs ###
set tabstop=4
set softtabstop=4
set expandtab

"### UI Config ###
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

"### Searching ###
set incsearch
set hlsearch
set path+=**

"### Folding ###
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

"### Mapping ###
noremap j gj
nnoremap k gk

"<-- Arrow Keys -->
"no <down> ddp
"no <up> ddkP
"no <left> <Nop>
"no <right> <Nop>

"<-- Beginning and End of Line -->
nnoremap E $
nnoremap B ^

"<-- Exit mode -->
inoremap jk <esc>
inoremap kj <esc>

"<-- Closing Brackets -->
imap <leader>' ''<esc>i
imap <leader>" ""<esc>i
imap <leader>( ()<esc>i
imap <leader>[ []<esc>i
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"<-- Ag mode -->
nnoremap <leader>a :Ag

"<-- Compile and execute -->
imap <F5> <Esc>:w<CR>:!clear;python3 %<CR>
nmap <F5> <CR>:!clear;python3 %<CR>

"### Tag Jumping ###
command! MakeTags !ctags -R

"### Text wrapping ###
set wrap
set tw=80
set textwidth=80

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

"### Language Tool ###
set nocompatible
filetype plugin on
let g:languagetool_jar='/Users/JSiu348/.vim/LanguageTool-3.5/languagetool-commandline.jar'

"### Latex-box ###
let g:LatexBox_split_side = "rightbelow"
let g:LatexBox_quickfix = 0
let g:LatexBox_fold_automatic = 0
let g:LatexBox_show_warnings = 0
let g:LatexBox_ignore_warnings = [
        \'Underfull',
        \'Overfull',
        \'specifier changed to',
        \'Font shape',
        \'epstopdf',
        \]
let g:LatexBox_fold_parts=[
        \"part",
        \"chapter",
        \"section",
        \"subsection",
        \"subsubsection",
        \"vtitle"
        \]

let g:LatexBox_latexmk_options = "--disable-write18 --file-line-error --interaction=batmode - pdflatex=lualatex -latex=luatex"
let g:LatexBox_latexmk_options = "-xelatex --disable-write18 --file-line-error --interaction=batchmode"

noremap =- :Latexmk <enter>
noremap ';  :LatexView <enter>

