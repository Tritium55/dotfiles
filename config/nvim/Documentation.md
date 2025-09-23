# This documents some things about this neovim config

## Dependencies
This config relies on Neovim Version 11+


## Keybinds
### LSP
- ctrl-]          -> go to definition
- gq              -> format selected text or text object
- K               -> display documentation of the symbol under the cursor
- ctrl-x + ctrl-o -> in insert mode, trigger code completion
- grn        -> renames all references of the symbol under the cursor
- gra        -> list code actions available in the line under the cursor
- grr        -> lists all the references of the symbol under the cursor
- gri        -> lists all the implementations for the symbol under the cursor
- gO         -> lists all symbols in the current buffer
- ctrl-s     -> in insert mode, display function signature under the cursor
- [d         -> jump to previous diagnostic in the current buffer
- ]d         -> jump to next diagnostic in the current buffer
- ctrl-w + d -> show error/warning message in the line under the cursor

### FZF
| Command                | List                                                                                  |
| ---                    | ---                                                                                   |
| `:Files [PATH]`        | Files (runs `$FZF_DEFAULT_COMMAND` if defined)                                        |
| `:GFiles [OPTS]`       | Git files (`git ls-files`)                                                            |
| `:GFiles?`             | Git files (`git status`)                                                              |
| `:Buffers`             | Open buffers                                                                          |
| `:Colors`              | Color schemes                                                                         |
| `:Ag [PATTERN]`        | [ag][ag] search result (`ALT-A` to select all, `ALT-D` to deselect all)               |
| `:Rg [PATTERN]`        | [rg][rg] search result (`ALT-A` to select all, `ALT-D` to deselect all)               |
| `:RG [PATTERN]`        | [rg][rg] search result; relaunch ripgrep on every keystroke                           |
| `:Lines [QUERY]`       | Lines in loaded buffers                                                               |
| `:BLines [QUERY]`      | Lines in the current buffer                                                           |
| `:Tags [PREFIX]`       | Tags in the project (`ctags -R`)                                                      |
| `:BTags [QUERY]`       | Tags in the current buffer                                                            |
| `:Changes`             | Changelist across all open buffers                                                    |
| `:Marks`               | Marks                                                                                 |
| `:BMarks`              | Marks in the current buffer                                                           |
| `:Jumps`               | Jumps                                                                                 |
| `:Windows`             | Windows                                                                               |
| `:Locate PATTERN`      | `locate` command output                                                               |
| `:History`             | `v:oldfiles` and open buffers                                                         |
| `:History:`            | Command history                                                                       |
| `:History/`            | Search history                                                                        |
| `:Snippets`            | Snippets ([UltiSnips][us])                                                            |
| `:Commits [LOG_OPTS]`  | Git commits (requires [fugitive.vim][f])                                              |
| `:BCommits [LOG_OPTS]` | Git commits for the current buffer; visual-select lines to track changes in the range |
| `:Commands`            | Commands                                                                              |
| `:Maps`                | Normal mode mappings                                                                  |
| `:Helptags`            | Help tags will shadow the command of the same name from pathogen.                     |
| `:Filetypes`           | File types
