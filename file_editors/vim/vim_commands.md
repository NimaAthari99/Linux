# Some Debian Commands

## Table Of Contents

- [VIM Shortcuts](#vim-shortcuts)

---

## VIM Shortcuts

| Command               | What it does                  | When to use it                        |
|-----------------------|-------------------------------|---------------------------------------|
| `yw`                              | Copy word      |       |
| `yy`                              | Copy line      |       |


| `dw`                              | Cut word      |       |
| `dd`                              | Cut line      |       |
| `d0`                              | Cut from cursur to first of line      |       |
| `x`                               | Cut character from curser      |       |


| `u`                               | Undo      |       |
| `CNTRL + R`                       | Redo      |       |
| ` ` `                             | Goto last changed character      |       |


| `p`                               | Paste      |       |
| `P`                               | Paste      |       |
| `CNTRL + V`                       | Paste      |       |


| `r`                               | Replace character      |       |


| `b`                               | Go to first character of word curser in on      |       |
| `B`                               | Go to first character of word curser in on      |       |
| `e`                               | Go to last character of word curser in on       |       |
| `E`                               | Go to last character of word curser in on       |       |
| `w`                               | Go to next word       |       |
| `W`                               | Go to next word       |       |
| `ge`                              | Go to next word       |       |
| `N`                               | Go to next pattern       |       |
| `n`                               | Go to last pattern       |       |
| `j`                               | Go to next line       |       |
| `k`                               | Go to last line       |       |
| `h`                               | Go to last left character       |       |
| `l`                               | Go to last left character       |       |
| `$`                               | Go to end of current line       |       |
| `gg`                              | Go to first character of first file's line       |       |
| `G`                               | Go to first character of last file's line       |       |


| `/`                               | Search for word       |       |


| `i`                               | Insert mode from curser position       |       |
| `a`                               | Insert mode after curser position       |       |
| `o`                               | Insert mode from next line       |       |
| `O`                               | Insert mode from last line       |       |
| `ESC`                             | Exit current mode       |       |


| `:%s/PREVIOUS_WORD/NEW_WORD/g`    | Replace NEW_WORD with PREVIOUS_WORD       |       |
| `:set spell`                      | Check word spell       |       |
| `:colorscheme <tab></tab>`        | Change color of vim       |       |
| `:match ErrorMsg /\%>73v.\+/`     | Highlight word       |       |
| `:set number`                     | Highlight word       |       |
| `:set guifont = courier`          | Change font to courier       |       |

**`Note: For changing something for some rows in one column:`**

```bash
CNTRL + V
CHOOSE LINES AND CHARACTERS YOU WANT
SHIFT + i
TYPE AND CHANGE WHAT YOU WANT
ESC
```

Now yor changes applied!

***Plugins:***

- Scrooloose/nerdtree: For managing files
- Ervandew/supertab: For completing coding
- jeffkreeftmeijer/vim-numbertoggle: Enables line numberig using a shortcut key
- Vim-scripts/vim-auto-save: Will save our changes automatically in a period of time
- Honza/vim-snippets
- Jiangmiao/auto-pairs: Auto types paranthezes and berackets
- ntpeters/vim-better-whitespace: Makes shitespace better and more beautiful
- Ap/vim-css-color: Better and more beautiful css
- Alvan/vim-closetag: Stop getting error

***[🔝 Table Of Contents](#table-of-contents)***

---
