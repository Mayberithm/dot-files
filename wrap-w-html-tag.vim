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
" convert all attribute inputs to lowercase (tolower() equivalent)
   " what happens when a non-alpha symbol is passed?
" append each attribute with container (="")
" how will the script know what attribute to concatenate?
" should there be an input for the attribute's value?
   " yeah, do this. combine this to the attribute string?
" how will the user know what attribute they're setting the value of?
" enable for use with Visual-Line
   " ignore leading whitespace (opening tag)
   " delete trailing whitespace (closing tag)
   " anticipate any behavior modifcations on implementation?
" proper usage of word (tag or element?)
   " validation or acceptable elements
" make a flowchart, bruh
" add <leader>W to make multi-line tag

