set ff=unix
set list
set et

"let g:loaded_javascript_syntax_checker = 1
let g:syntastic_javascript_jsl_conf = fnamemodify(expand('<sfile>'), ':p:h') . "/../jsl.conf"

" Use jsl if the user has it installed
" Use jsl if the user has it installed
if executable("jsl")
  function! SyntaxCheckers_javascript_GetLocList()
    let makeprg = "jsl --conf=" . g:syntastic_javascript_jsl_conf . " --nologo --nofilelisting --nosummary ".shellescape(expand('%'))
    let errorformat='%W%f(%l): lint warning: %m,%-Z%p^,%W%f(%l): warning: %m,%-Z%p^,%E%f(%l): SyntaxError: %m,%-Z%p^,%-G'
    " let errorformat='%f(%l:%c):%m'
    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
  endfunction
endif
