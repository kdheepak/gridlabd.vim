" syntax/gridlabd.vim

syn match gridlabdComment "//.*$"

syntax keyword gridlabdKeywords
			\ clock
			\ object
			\ module
" Integer with - + or nothing in front
syntax match gridlabdNumber '\d\+'
syntax match gridlabdNumber '[-+]\d\+'

" Floating point number with ecimal no E or e
syntax match gridlabdNumber '\d\+\.\d*'
syntax match gridlabdNumber '[-+]\d\+\.\d*'

" Floating point like number ith E and no decimal point (+,-)
syntax match gridlabdNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syntax match gridlabdNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Floating point like number ith E and decimal point (+,-)
syntax match gridlabdNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syntax match gridlabdNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

" Integer with - + or nothing in front and j at the end
syntax match gridlabdNumber '\d\+j'
syntax match gridlabdNumber '[-+]\d\+j'

" Floating point number with decimal no E or e and j at the end
syntax match gridlabdNumber '[-+]\d\+\.\d*j'

" Floating point like number with E and no decimal point (+,-) and j at the end
syntax match gridlabdNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+j'
syntax match gridlabdNumber '\d[[:digit:]]*[eE][\-+]\=\d\+j'

" Floating point like number with E and decimal point (+,-) and j at the end
syntax match gridlabdNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+j'
syntax match gridlabdNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+j'

syntax region gridlabdDescriptionBlock start="{" end="}" fold transparent contains=gridlabdNumber, gridlabdString

" match key-value-pair key
syn match kvpK "\([a-zA-Z0-9._-]\)\+\(=\)\@="
" match key-value-pair delimiter
syn match kvpD " "

syntax region gridlabdString start='"' end='"'

let b:current_syntax = "gridlabd"

highlight default link gridlabdKeywords Keyword
highlight default link gridlabdComment Comment
highlight default link gridlabdNumber Constant
highlight default link gridlabdString Constant

highlight link kvpK Identifier
highlight link kvpD Delimiter
