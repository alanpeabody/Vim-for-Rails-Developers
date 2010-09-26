"Must be set first - Makes Vim behave in a way not compatible with Vi. Needed for most modern plugins
set nocompatible

" Buffers do not have to be saved before they can be hidden. Might be confusing for some.
set hidden

" guioptions e = show tabs, m = show menu
set guioptions=em

" Always show status line
set laststatus=2

" My preferred font and size (open source)
set gfn=DejaVu\ Sans\ Mono\ 11
colorscheme vividchalk

" Remember last 1000 commands
set history=1000

" Show line numbers
set number
set ruler

" Searches are case insensitive unless you use a capital letter. /str/i forces case sensitivity
set ignorecase
set smartcase

" Turn on spell checking (i need it)
set spell

" Tabs set to always be two spaces
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent

" Ubuntu uses ack-grep instead of ack.
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Edit routes
command! Rroutes :Redit config/routes.rb
command! RSroutes :RSedit config/routes.rb
command! RTroutes :RTedit config/routes.rb
command! RVroutes :RVedit config/routes.rb

" store backups in central location
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Automatically highlight scss as css.
autocmd BufNewFile,BufRead *.scss set filetype=css

" Disable arrow keys.
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>


" MacVim may not need any of this
"copy F7
vmap <F7> "+ygv"zy`>
"paste (Shift-F7 to paste after normal cursor, Ctrl-F7 to paste over visual selection)
nmap <F7> "zgP
nmap <S-F7> "zgp
imap <F7> <C-r><C-o>z
vmap <C-F7> "zp`]
cmap <F7> <C-r><C-o>z
"copy register
autocmd FocusGained * let @z=@+
