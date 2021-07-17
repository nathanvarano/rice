"%% SiSU Vim color file
" Slate Maintainer: Ralph Amissah <ralph@amissah.com>
" (originally looked at desert Hans Fugal <hans@fugal.net> http://hans.fugal.net/vim/colors/desert.vim (2003/05/06)
:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "slate"
:hi Normal guifg=White guibg=grey15
:hi Cursor guibg=khaki guifg=slategrey
:hi VertSplit guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
:hi Folded guibg=black guifg=grey40 ctermfg=5 ctermbg=darkgrey
:hi FoldColumn guibg=black guifg=grey20 ctermfg=1 ctermbg=15
:hi IncSearch guifg=green guibg=black cterm=none ctermfg=1 ctermbg=15
:hi ModeMsg guifg=goldenrod cterm=none ctermfg=15
:hi MoreMsg guifg=SeaGreen ctermfg=5
:hi NonText guifg=RoyalBlue guibg=grey15 cterm=bold ctermfg=15
:hi Question guifg=springgreen ctermfg=5
:hi Search guibg=peru guifg=wheat cterm=none ctermfg=5 ctermbg=blue
:hi SpecialKey guifg=yellowgreen ctermfg=5
:hi StatusLine guibg=#c2bfa5 guifg=black gui=none cterm=bold,reverse
:hi StatusLineNC guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
:hi Title guifg=gold gui=bold cterm=bold ctermfg=5
:hi Statement guifg=CornflowerBlue ctermfg=13
:hi Visual gui=none guifg=khaki guibg=olivedrab cterm=reverse
:hi WarningMsg guifg=salmon ctermfg=13
:hi String guifg=SkyBlue ctermfg=3
:hi Comment term=bold ctermfg=6 guifg=grey40
:hi Constant guifg=#ffa0a0 ctermfg=13
:hi Special guifg=darkkhaki ctermfg=10
:hi Identifier guifg=salmon ctermfg=7
:hi Include guifg=red ctermfg=15
:hi PreProc guifg=red guibg=white ctermfg=11
:hi Operator guifg=Red ctermfg=15
:hi Define guifg=gold gui=bold ctermfg=5
:hi Type guifg=CornflowerBlue ctermfg=2
:hi Function guifg=navajowhite ctermfg=4
:hi Structure guifg=green ctermfg=5
:hi LineNr guifg=grey50 ctermfg=7
:hi Ignore guifg=grey40 cterm=bold ctermfg=15
:hi Todo guifg=orangered guibg=yellow2
:hi Directory ctermfg=5
:hi ErrorMsg cterm=bold guifg=White guibg=Red cterm=bold ctermfg=15 ctermbg=1
:hi VisualNOS cterm=bold,underline
:hi WildMenu ctermfg=0 ctermbg=3
:hi DiffAdd ctermbg=4
:hi DiffChange ctermbg=4
:hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
:hi DiffText cterm=bold ctermbg=1
:hi Underlined cterm=underline ctermfg=4
:hi Error guifg=White guibg=Red cterm=bold ctermfg=15 ctermbg=1
:hi SpellErrors guifg=White guibg=Red cterm=bold ctermfg=15 ctermbg=1
