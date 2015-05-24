let g:alpaca_tags#config = {
    \   '_' : '-R --sort=yes',
    \   'ruby': '--languages=+Ruby',
    \ }

augroup AlpacaTags
  autocmd!
  if exists(':AlpacaTags')
    autocmd BufWritePost Gemfile AlpacaTagsBundle
    autocmd BufEnter     *       AlpacaTagsSet
    autocmd BufWritePost *       AlpacaTagsUpdate
  endif
augroup END
