# This documents some things about this neovim config

## Dependencies
This config relies on Neovim Version 11+


## Keybinds
### LSP defaults
- ctrl-]          -> go to definition
- gq              -> format selected text or text object
- K               -> display documentation of the symbol under the cursor
- ctrl-x + ctrl-o -> in insert mode, trigger code completion

Neovim specific:
- grn        -> renames all references of the symbol under the cursor
- gra        -> list code actions available in the line under the cursor
- grr        -> lists all the references of the symbol under the cursor
- gri        -> lists all the implementations for the symbol under the cursor
- gO         -> lists all symbols in the current buffer
- ctrl-s     -> in insert mode, display function signature under the cursor
- [d         -> jump to previous diagnostic in the current buffer
- ]d         -> jump to next diagnostic in the current buffer
- ctrl-w + d -> show error/warning message in the line under the cursor

