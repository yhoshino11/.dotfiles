augroup xmpfilters
  autocmd!
  autocmd FileType ruby nmap <Leader>a <Plug>(xmpfilter-run)
  autocmd FileType ruby xmap <Leader>a <Plug>(xmpfilter-run)
  autocmd FileType ruby imap <Leader>a <Plug>(xmpfilter-run)

  autocmd FileType ruby nmap <Leader>m <Plug>(xmpfilter-mark)
  autocmd FileType ruby xmap <Leader>m <Plug>(xmpfilter-mark)
  autocmd FileType ruby imap <Leader>m <Plug>(xmpfilter-mark)
augroup END
