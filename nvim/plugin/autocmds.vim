fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup KEVYN
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
  " default is 4
  autocmd BufEnter *.{html,vim,javascript,typescript,typescriptreact,json,ts,tsx} setlocal shiftwidth=2 tabstop=2 softtabstop=2
  autocmd BufEnter *.go setlocal shiftwidth=8 tabstop=8 softtabstop=8
  " // TODO: finish this function
  "autocmd BufWritePost *maps.vim :exec '!~/Desktop/projects/scripts/bin/noreapeatmaps.py'
  autocmd BufWritePost *.vim :exec 'so %'
augroup END
