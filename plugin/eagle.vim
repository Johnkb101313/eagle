let g:surround_charactor = ["", ""]

function! g:SurroundSetup(pre, suf)
   let g:surround_charactor = [a:pre,a:suf]
   set operatorfunc=<SID>SurroundOperator
endfunction

function! s:SurroundOperator(type)
   if a:type ==# "char"
      let l:first_col = col("'[")
      execute "normal! `]a" . g:surround_charactor[1] . "\<esc>" .
               \':call cursor(".",' . l:first_col . ')' . "\<cr>" .
               \'i' . g:surround_charactor[0] . "\<esc>"
   elseif a:type ==# "line"
      echom "linewise: Coming Soon!"
   elseif a:type ==# "block"
      echom "blockwise: Coming Soon!"
   endif
endfunction
