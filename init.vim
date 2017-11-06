" init.vim
"
" Description: Dark powered mode of SpaceVim
" Author: Christopher EnyTC <chris@enytc.com>
" Source: https://github.com/chrisenytc/spacevim

" Default settings
let g:spacevim_default_indent = 2
let g:spacevim_max_column     = 80

let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1

let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:neomake_vim_enabled_makers = ['eslint']

let g:spacevim_enable_neomake = 1
let g:spacevim_lint_on_the_fly = 1

let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''

let g:spacevim_filemanager = 'nerdtree'

" Change the default directory where all miscellaneous persistent files go.
" By default it is ~/.cache/vimfiles.
let g:spacevim_plugin_bundle_dir = '~/.cache/vimfiles'

" Set SpaceVim colorscheme
let g:spacevim_colorscheme = 'onedark'
let g:spacevim_colorscheme_bg = 'dark'

" Set plugin manager, you want to use, default is dein.vim
let g:spacevim_plugin_manager = 'dein'

" Set windows shortcut leader [Window], default is `s`
let g:spacevim_windows_leader = 's'

" Set unite work flow shortcut leader [Unite], default is `f`
let g:spacevim_unite_leader = 'f'

" Set typescript server
let g:typescript_server_path = '/Users/chrisenytc/.nodenv/shims/tsserver'

" use coma as `<Leader>`
let g:mapleader = ","

" Load layers
call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#html5')
call SpaceVim#layers#load('lang#css3-syntax')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#elixir')
call SpaceVim#layers#load('lang#markdown')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#ruby')
call SpaceVim#layers#load('lang#haskell')
call SpaceVim#layers#load('lang#java')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#typescript')
call SpaceVim#layers#load('lang#tern')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#perl')
call SpaceVim#layers#load('lang#php')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#rust')
call SpaceVim#layers#load('lang#swig')
call SpaceVim#layers#load('lang#tmux')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('lang#json')
call SpaceVim#layers#load('lang#Dockerfile')
call SpaceVim#layers#load('shell') 
call SpaceVim#layers#load('tools#screensaver')

" Load ui layer
call SpaceVim#layers#load('ui')

" Load executables
if executable('vimlint')
    call add(g:neomake_vim_enabled_makers, 'vimlint') 
endif
if executable('vint')
    call add(g:neomake_vim_enabled_makers, 'vint') 
endif
if has('python3')
    let g:ctrlp_map = ''
    nnoremap <silent> <C-p> :Denite file_rec<CR>
endif
