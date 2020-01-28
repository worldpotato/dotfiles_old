" Vim color file
" Maintainer:	Felix Strobel <mail@felixstrobel.de>
" Last Change:	18.01.2020
" inspired by delek from David Schweikert <dws@ee.ethz.ch>

" First remove all existing highlighting.
hi clear

let colors_name = "worldpotato"

hi Normal guifg=Black guibg=white

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg                 term=standout   ctermbg=DarkRed     ctermfg=White
hi IncSearch                term=reverse    cterm=reverse
hi ModeMsg                  term=bold       cterm=bold
hi VertSplit                term=bold       cterm=bold          ctermbg=Black       ctermfg=Black
hi Visual                   term=reverse    cterm=reverse       ctermbg=Black
hi VisualNOS                term=bold       cterm=bold
hi DiffText                 term=reverse    cterm=bold          ctermbg=Red
hi Directory                term=bold       ctermfg=DarkBlue
hi LineNr                   term=bold       ctermfg=Brown
hi MoreMsg                  term=bold       ctermfg=DarkGreen
hi Question                 term=standout   ctermfg=DarkGreen
hi Search                   term=reverse    ctermbg=Yellow      ctermfg=Black
hi SpecialKey               term=bold       ctermfg=DarkBlue
hi Title                    term=bold       ctermfg=DarkMagenta
hi WarningMsg               term=standout   ctermfg=DarkRed
hi WildMenu                 term=standout   ctermbg=Yellow      ctermfg=Black
hi Folded                   term=standout   ctermbg=Black       ctermfg=DarkBlue
hi FoldColumn               term=standout   ctermbg=Grey        ctermfg=DarkBlue
hi DiffAdd                  term=bold       ctermbg=LightBlue
hi DiffChange               term=bold       ctermbg=LightMagenta
hi DiffDelete               term=bold       ctermfg=Blue        ctermbg=LightCyan
hi TabLine                  term=bold       cterm=bold          ctermfg=White       ctermbg=233
hi TabLineSel               term=bold       cterm=bold          ctermfg=White       ctermbg=237
hi TablineFill              term=bold       cterm=bold          ctermfg=White       ctermbg=233
" gitgutter
hi SignColumn               term=bold       cterm=NONE          ctermbg=Black       ctermfg=Cyan
hi GitGutterAdd             term=bold       cterm=NONE          ctermbg=Black       ctermfg=Green
hi GitGutterChange          term=bold       cterm=NONE          ctermbg=Black       ctermfg=Brown
hi GitGutterDelete          term=bold       cterm=NONE          ctermbg=Black       ctermfg=Red
hi GitGutterChangeDelete    term=bold       cterm=NONE          ctermbg=Black       ctermfg=Red

" hi StatusLine	cterm=bold ctermbg=blue ctermfg=yellow guibg=gold guifg=blue
" hi StatusLineNC	cterm=bold ctermbg=blue ctermfg=black  guibg=gold guifg=blue
hi NonText      term=bold ctermfg=Blue

" syntax highlighting
hi PreProc    term=underline cterm=NONE ctermfg=darkred
hi Identifier term=underline cterm=NONE ctermfg=darkcyan
hi Comment    term=NONE      cterm=NONE ctermfg=darkmagenta
hi Constant   term=underline cterm=NONE ctermfg=darkgreen
hi Special    term=bold      cterm=NONE ctermfg=lightred
hi Statement  term=bold      cterm=bold ctermfg=blue
hi Type	      term=underline cterm=NONE ctermfg=blue

" Line and column mark
hi CursorLine cterm=none ctermbg=8
hi CursorColumn ctermbg=8

if exists("syntax_on")
  let syntax_cmd = "enable"
  runtime syntax/syncolor.vim
  unlet syntax_cmd
endif

" vim: sw=2
