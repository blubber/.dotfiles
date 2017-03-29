setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal textwidth=99
setlocal smarttab
setlocal expandtab
setlocal smartindent
setlocal cc=90,99


:highlight BadWhitespace ctermbg=red guibg=#00FFFF
match BadWhitespace /\s\+$/
