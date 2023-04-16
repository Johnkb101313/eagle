# Eagle (surrounding plugin)

## Discription

A high customizable surround plugin For VIM

supported:
- VIM
- normal mode
- characterwise

will support:
- virual line
- linewise

## Installation

Vim-Plug:

```vimscript
Plug 'Johnkb101313/vim-eagle'
```

or use your favorite plugin-manager to install

## Usage

1. Setup you keymap:

```vimscript
    nnoremap ( :call SurroundSetup("(",")")<cr>g@
    nnoremap ) :call SurroundSetup("(",")")<cr>g@
```
2. Use you keymap ,then press {motion} (iw, w, e, 2w)
    - (iw
    - )iw

## Customize

Eagle allow you to setup what you what to used charactor for surrounding

when you call `SurroundSetup` on nnoremap, you can pass 2 String argument into the `SurroundSetup` function, one for prefix, another one for suffix

```vimscript
    "                               vvvvvv   vvvvvv
    nnoremap ( :call SurroundSetup("prefix","suffix")<cr>g@
```

## Example

```vimscript
" ------------------------------------
" To use () Surround the {motion area}
" ------------------------------------
nnoremap ( :call SurroundSetup('(', ')')<cr>g@
nnoremap ) :call SurroundSetup('(', ')')<cr>g@

" ------------------------------------
" To use {} Surround the {motion area}
" ------------------------------------
nnoremap { :call SurroundSetup('{', '}')<cr>g@
nnoremap } :call SurroundSetup('{', '}')<cr>g@

" ------------------------------------
" To use {} Surround the {motion area}
" ------------------------------------
nnoremap [ :call SurroundSetup('[', ']')<cr>g@
nnoremap ] :call SurroundSetup('[', ']')<cr>g@

" ------------------------------------
" To use '," Surround the {motion area}
" ------------------------------------
nnoremap ' :call SurroundSetup("'", "'")<cr>g@
nnoremap " :call SurroundSetup('"', '"')<cr>g@

" ------------------------------------
" To use <> Surround the {motion area}
" ------------------------------------
nnoremap < :call SurroundSetup('<', '>')<cr>g@
nnoremap > :call SurroundSetup('<', '>')<cr>g@

" ------------------------------------
" To use || Surround the {motion area}
" ------------------------------------
nnoremap <leader>a :call SurroundSetup("\|","\|")<cr>g@
```

## Author want to say something
Johnkb101313: This is my first plugin, and english not my native language.
              I try my best to write this document. (My Engligh really suck...)
              If you don't understand some point in this document, you can mention issue to me
              At Last, Hope you can give me a little star? for support me, and take me further
