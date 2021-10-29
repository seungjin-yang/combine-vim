" Vim syntax file
" Language: Combine Tool Datacard
" Maintainer: Seungjin Yang
" Latest Revision: 19 July 2021
" https://github.com/cms-analysis/HiggsAnalysis-CombinedLimit

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "combine"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" comment
syntax match combineComment "#.*$"
syntax match combineComment "--.*$"

highlight default link combineComment Comment


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" todo
syntax keyword combineTodo TODO FIXME NOTE XXX

highlight default link combineTodo Todo


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" numbers
syntax match combinecNumber "\v<\d+>"
syntax match combinecNumber "\v<\d+\.\d+>"
syntax match combinecNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match combinecNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match combinecNumber "\v<0b[01]+>"
syntax match combinecNumber "\v<0o\o+>"

highlight default link combinecNumber Number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wildcard
syntax match combinecWildcard "*"

highlight default link combinecWildcard Operator


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" distributions
" FIXME
syntax match combineDistributions "\%(\s\+lnN\s\+\)"
syntax match combineDistributions "\%(\s\+gmN\s\+\)"
syntax match combineDistributions "\%(\s\+lnU\s\+\)"
syntax match combineDistributions "\%(\s\+shape\s\+\)"
syntax match combineDistributions "\%(\s\+autoMCStats\s\+\)"

highlight default link combineDistributions Statement

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" placeholder
" syntax match combinePlaceholder "$\a\+"
" TODO shapes match contained
syntax match combinePlaceholder "$PROCESS"
syntax match combinePlaceholder "$MASS"
syntax match combinePlaceholder "$CHANNEL"
syntax match combinePlaceholder "$SYSTEMATIC"

highlight default link combinePlaceholder Special


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" imax, jmax, kmax
syntax match combineMaxType "\%(^\s\{}\(imax\|jmax\|kmax\)\)" nextgroup=combineMaxValue skipwhite
syntax match combineMaxValue /\s\+\%(\(\d\|\*\)\)\+/  contains=combineMaxValueNumber,combineMaxValueOperator  contained nextgroup=combineMaxComment skipwhite
syntax match combineMaxValueNumber "\%\(\d\)" contained
syntax match combineMaxValueOperator "\%\(\*\)" contained
syntax match combineMaxComment /\s\+.*$/ contained

highlight default link combineMaxType Type
highlight default link combineMaxValueNumber Number
highlight default link combineMaxValueOperator Operator
highlight default link combineMaxComment Comment

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" keywords
" TODO In the future they will have their own syn hi like imax.
syntax match combineType "\%(^\s\{}bin\s\+\)"
syntax match combineType "\%(^\s\{}observation\s\+\)"
syntax match combineType "\%(^\s\{}process\s\+\)"
syntax match combineType "\%(^\s\{}rate\s\+\)"
syntax match combineType "\%(^\s\{}shapes\s\+\)"

highlight default link combineType type
