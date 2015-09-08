if exists('loaded_ctags_update') || &cp
   finish
endif

let loaded_ctags_update = 1

function! CtagsUpdate()
let s:tags_list = split(&tags,',')
   for t in s:tags_list
      if t != 'tags' && t != './tags' && t != 'TAGS'
         echo t
         let s:path = fnamemodify(t,':p:h')
         echo s:path
         let s:cmd = 'ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f '.s:path.'/tags'
         echo s:cmd
         let s:result = system(s:cmd)
         echo s:result
      endif
   endfor
endfunction
