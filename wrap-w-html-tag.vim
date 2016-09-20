" Wrap visual mode selection with an HTML style tag

vmap <leader>w <esc>:call VisualHTMLTagWrap()<CR>

function! VisualHTMLTagWrap()
   let tag = input("Tag to wrap selection: ")
   let attribute = input("Attributes for opening tag: ")
   if len(tag) > 0 
      normal `>
      if &selection == 'exclusive'
         exe "normal i</".tag.">"
      else
         exe "normal a</".tag.">"
      endif

      normal `<
      if len(attribute) > 0 
         exe "normal i<".tag." ".attribute.">"
      else
         exe "normal i<".tag.">"
      endif
      normal `<
   endif
endfunction

" Future improvements:
"==================================================
" append each attribute with container (="")
" enable for use with Visual-Line
   " ignore leading whitespace (opening tag)
   " delete trailing whitespace (closing tag)
" proper usage of word (tag or element?)
