setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=99
setlocal smarttab
setlocal expandtab
setlocal smartindent
setlocal cc=90,99


:highlight BadWhitespace ctermbg=red guibg=#00FFFF
match BadWhitespace /\s\+$/
