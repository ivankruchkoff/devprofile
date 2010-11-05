syn region lassoString contained start=/'/ skip=/\\'/ end=/'/
syn match lassoArgMatch contained "\<-[A-Z][a-z]\+\>"
syn keyword lassoKeyword xxx

" Define the default highlighting.
if version >= 508 
  if version < 508
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
    
  HiLink lassoKeyword Function
  HiLink lassoString String
  HiLink lassoArgMatch String
  
  delcommand HiLink
endif
