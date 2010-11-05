if exists("current_compiler")
    finish
endif
let current_compiler = "js"
set makeprg=cat\ %\ \\\|\ /Users/ivankruchkoff/macports/bin/js\ /Users/ivankruchkoff/.vim/js/mylintrun.js\ %
set errorformat=%f:%l:%c:%m
