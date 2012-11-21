set sw=4
set ts=4
set ff=unix
set et

"let php_sql_query=1
let php_htmlInStrings=1
let php_smart_members=1
let php_alt_properties=1
let php_fold_arrays=1

"set keywordprg=pman
let g:manpageview_pgm_php       = "pman"
"let g:manpageview_syntax_php   = "manphp"
let g:manpageview_nospace_php   = 0
"let g:manpageview_K_php        = "manpageview#ManPagePhp()"
"
au! BufRead,BufNewFile,BufWinEnter *Test.php
    \ setfiletype php.phpunit
au! BufRead,BufNewFile,BufWinEnter *OutputTest.php
    \ setfiletype php.phpunit_output_testcase
au! BufRead,BufNewFile,BufWinEnter *WebTest.php
    \ setfiletype php.phpunit_selenium_testcase
