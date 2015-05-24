set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 1
let g:syntastic_mode_map                 = { 'mode': 'passive', 'active_filetypes': ['ruby', 'python']}

let g:syntastic_ruby_checkers            = ['rubocop']
let g:syntastic_ruby_rubocop_exec        = '$HOME/.rbenv/shims/rubocop'

let g:syntastic_python_checkers          = ["flake8"]
