if exists("current_compiler")
    finish
endif
let current_compiler = "perl"
"set makeprg=/usr/bin/efm_perl.pl\ -c\ %\ $*
set makeprg=~/bin/efm_perl.pl\ -c\ %\ $*
set errorformat=%f:%l:%m

