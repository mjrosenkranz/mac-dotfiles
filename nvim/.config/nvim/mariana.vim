highlight clear

if exists('syntax_on')
	syntax reset
endif

set background=dark
let g:colors_name = 'mariana'

let s:bg =		'#3b4650'

let s:black =		'#475561'
let s:red =			'#ca575d'
let s:green =		'#76a770'
let s:yellow =		'#d09854'
let s:blue =		'#5885b2'
let s:magenta =		'#b48ab4'
let s:cyan =		'#569a9a'
let s:white =		'#abb4c4'
let s:brblack =		'#596b7a'
let s:brred =		'#ed6970'
let s:brgreen =		'#99c794'
let s:bryellow =	'#f0b062'
let s:brblue =		'#6699cc'
let s:brmagenta =	'#ca9dca'
let s:brcyan =		'#6abcbc'
let s:brwhite =		'#d8dee9'

let s:cbg =			237
let s:cblack	=	239
let s:cred =		166
let s:cgreen =		64
let s:cyellow =		172
let s:cblue =		033
let s:cmagenta =	141
let s:ccyan =		30
let s:cwhite =		250
let s:cbrblack =	243
let s:cbrred =		196
let s:cbrgreen =	113
let s:cbryellow =	215
let s:cbrblue =		875
let s:cbrmagenta =	183
let s:cbrcyan =		115
let s:cbrwhite =	195

function! s:HL(group, fg, bg, cfg, cbg, attr)
	let l:attr = a:attr

	if !empty(a:fg)
		exec 'hi ' . a:group . ' guifg=' . a:fg
	endif
	if !empty(a:bg)
		exec 'hi ' . a:group . ' guibg=' . a:bg
	endif
	if !empty(a:cfg)
		exec 'hi ' . a:group . ' ctermfg=' . a:cfg
	endif
	if !empty(a:cbg)
		exec 'hi ' . a:group . ' ctermbg=' . a:cbg
	endif
	if !empty(a:attr)
		exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
	endif
endfun

" func call					fg			bg			cfg			cbg			art
call s:HL('Normal',			s:white,	'NONE',		s:cwhite,	'NONE',		'NONE')
call s:HL('NormalNC',		s:brblack,	'NONE',		s:cbrblack,	'NONE',		'NONE')
call s:HL('StatusLine',		s:green,	'NONE',	 	s:cgreen,	'NONE',		'NONE')
call s:HL('LineNr',			s:brblack,	'NONE',	 	s:cbrblack,	'NONE',		'NONE')
call s:HL('CursorLineNr',	s:yellow,	'NONE',	 	s:cyellow,	'NONE',		'NONE')
call s:HL('ModeMsg',		s:brblack,	'NONE',	 	s:cbrblack,	'NONE',		'NONE')
call s:HL('NonText',		s:black,	'NONE',	 	s:cblack,	'NONE',		'NONE')
call s:HL('Visual',			'NONE',		s:black,	'NONE',		s:cblack,		'NONE')

" editor
call s:HL('Cursor',			s:white,		s:yellow,	   s:cwhite,		s:cyellow,	   'NONE')
call s:HL('CursorLine',		'NONE',			s:brblack,	   'NONE',			s:cbrblack,	   'NONE')
call s:HL('Comment',		s:brblack,		'NONE',		   s:cbrblack,		'NONE',	   'NONE')
call s:HL('Constant',		s:brgreen,		'NONE',		   s:cbrgreen,		'NONE',	   'NONE')
call s:HL('Identifier',		s:brmagenta,	'NONE',		   s:cbrmagenta,	'NONE',	   'NONE')
call s:HL('Statement',		s:magenta,		'NONE',		   s:cmagenta,		'NONE',	   'NONE')
call s:HL('PreProc',		s:red,			'NONE',		   s:cred,			'NONE',	   'NONE')
call s:HL('Type',			s:brblue,	   	'NONE',		   s:cbrblue,		'NONE',	   'NONE')
call s:HL('Special',		s:brcyan,	   	'NONE',		   s:cbrcyan,		'NONE',	   'NONE')
call s:HL('Underlined',		s:brcyan,	   	'NONE',		   s:cbrcyan,		'NONE',	   'bold')
call s:HL('Error',			s:brwhite,	   	s:brred,	   s:cbrwhite,		s:cbrred,	  'NONE')
call s:HL('Todo',			s:brblack,	   	s:bryellow,	   s:cbrblack,		s:cbryellow,	   'NONE')
