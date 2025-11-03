# Neovim Beginner Configuration

Welcome to your new Neovim setup! This configuration is designed to be beginner-friendly while providing powerful features.

## First Time Setup

1. Open Neovim by typing `nvim` in your terminal
2. Wait for all plugins to install automatically (this happens on first launch)
3. Once complete, close Neovim with `:q` and reopen it
4. Run `:checkhealth` to verify everything is working

## Installed Features

### Core Functionality
- **Plugin Manager**: lazy.nvim (auto-installs plugins)
- **File Explorers**: nvim-tree (sidebar browser), Neo-tree (git-aware tree), Oil (buffer-style navigator)
- **Fuzzy Finder**: Telescope (find files, text, etc.)

- **Syntax Highlighting**: Treesitter (better code highlighting)
- **LSP Support**: Language Server Protocol (code intelligence)
- **Autocompletion**: nvim-cmp (smart code completion)
- **Color Scheme**: Catppuccin Mocha (beautiful dark theme)

### UI Enhancements
- **Status Line**: lualine (shows info at the bottom)
- **Buffer Tabs**: bufferline (shows open files as tabs)
- **Git Signs**: gitsigns (shows git changes in gutter)
- **Indent Guides**: indent-blankline (visual indent lines)
- **Auto-pairs**: nvim-autopairs (auto-close brackets)
- **Comments**: Comment.nvim (easy commenting)
- **Key Hints**: which-key (shows available keybindings)
- **Start Screen**: dashboard-nvim (project overview on launch)

### Workflow Tools
- **Integrated Terminal**: toggleterm.nvim (floating, vertical, or horizontal terminals)
- **Symbols Outline**: outline.nvim (code tree for quick navigation)
- **Todo Tracker**: todo-comments.nvim (highlight and jump between TODO/FIXME notes)

## Essential Keybindings


**Leader Key**: `Space` - Many commands start with the leader key

### File Operations
- `<Space>w` - Save file
- `<Space>q` - Quit
- `<Space>x` - Close current buffer

### File Explorer (nvim-tree)
- `<Space>e` - Toggle file explorer
- `<Space>o` - Focus file explorer
  - Inside explorer:
    - `a` - Create new file/folder
    - `d` - Delete file/folder
    - `r` - Rename file/folder
    - `x` - Cut file/folder
    - `c` - Copy file/folder
    - `p` - Paste file/folder
    - `Enter` - Open file
    - `g?` - Show help

### Alternative Explorer (Neo-tree)
- `<Space>n` - Toggle Neo-tree on the right
- `<Space>nf` - Focus Neo-tree window
- `<Space>ng` - Open Neo-tree git status view

### Directory Browser (Oil)
- `-` - Open parent directory in the current window
- `<Space>-` - Open parent directory in a floating window

### Finding Files (Telescope)

- `<Space>ff` - Find files
- `<Space>fg` - Find text (grep)
- `<Space>fb` - Find buffers (open files)
- `<Space>fh` - Find help
- `<Space>fr` - Recent files
  - Inside Telescope:
    - `Ctrl-j` / `Ctrl-k` - Move up/down
    - `Enter` - Open file
    - `Esc` - Close

### Buffer Navigation
- `Tab` - Next buffer
- `Shift-Tab` - Previous buffer
- `<Space>x` - Close buffer

### Window Navigation
- `Ctrl-h` - Move to left window
- `Ctrl-j` - Move to bottom window
- `Ctrl-k` - Move to top window
- `Ctrl-l` - Move to right window

### Window Resizing
- `Ctrl-Up` - Increase height
- `Ctrl-Down` - Decrease height
- `Ctrl-Left` - Decrease width
- `Ctrl-Right` - Increase width

### Terminal
- `<C-\>` - Toggle the last terminal
- `<Space>tf` - Toggle floating terminal
- `<Space>th` - Toggle horizontal terminal
- `<Space>tv` - Toggle vertical terminal

### Code Navigation (when LSP is active)

- `gd` - Go to definition
- `gD` - Go to declaration
- `gi` - Go to implementation
- `gr` - Show references
- `K` - Show hover information
- `[d` - Previous diagnostic (error/warning)
- `]d` - Next diagnostic

### Code Actions
- `<Space>rn` - Rename symbol
- `<Space>ca` - Code actions
- `<Space>f` - Format document

### Symbols Outline
- `<Space>s` - Toggle symbols outline panel

### Todo Comments
- `<Space>tt` - Show TODO items in Telescope
- `]t` - Jump to next TODO/FIX comment
- `[t` - Jump to previous TODO/FIX comment

### Editing

- `gcc` - Toggle line comment
- `gc` (in visual mode) - Comment selection
- `Ctrl-Space` - Trigger completion
- `Ctrl-j` / `Ctrl-k` - Navigate completion menu
- `Enter` - Accept completion
- `>` (in visual mode) - Indent right
- `<` (in visual mode) - Indent left

### Git
- `]c` - Next git change
- `[c` - Previous git change
- `<Space>gp` - Preview git hunk
- `<Space>gb` - Git blame line

### Misc
- `Esc` - Clear search highlights
- `Ctrl-d` - Scroll down (keeps cursor centered)
- `Ctrl-u` - Scroll up (keeps cursor centered)

## Language Servers

The following language servers are pre-configured and will auto-install:

- **Lua**: lua_ls
- **JavaScript/TypeScript**: tsserver
- **Python**: pyright
- **Rust**: rust_analyzer
- **HTML**: html
- **CSS**: cssls
- **JSON**: jsonls

To install additional language servers:
1. Run `:Mason` to open the Mason UI
2. Browse available servers and press `i` to install

## Tips for Beginners

1. **Press `Space` and wait** - which-key will show you available commands
2. **Use Telescope for everything** - `<Space>ff` to find files, `<Space>fg` to search text
3. **Keep the file explorer open** - `<Space>e` toggles the sidebar
4. **Learn one command at a time** - Don't try to memorize everything at once
5. **Use `:help <topic>`** - Neovim has excellent built-in help

## Common Commands

- `:Mason` - Open package manager (install LSP servers, formatters, etc.)
- `:Lazy` - Open plugin manager (update/install plugins)
- `:checkhealth` - Check for issues with your setup
- `:h <topic>` - Get help on any topic
- `:TSUpdate` - Update Treesitter parsers

## Customization

All configuration files are in: `~\AppData\Local\nvim\`

- `init.lua` - Main configuration file
- `lua/plugins/` - Plugin configurations
  - `colorscheme.lua` - Color scheme
  - `treesitter.lua` - Syntax highlighting
  - `telescope.lua` - Fuzzy finder
  - `nvim-tree.lua` - File explorer
  - `lsp.lua` - Language servers
  - `cmp.lua` - Autocompletion
  - `ui.lua` - UI enhancements

To modify settings, edit these files and restart Neovim.

## Troubleshooting

**Plugins not installing?**
- Make sure you have `git` installed
- Run `:Lazy sync` to manually sync plugins

**Language server not working?**
- Run `:Mason` and check if the server is installed
- Run `:LspInfo` to see active language servers
- Run `:checkhealth` to diagnose issues

**Colors look wrong?**
- Make sure your terminal supports true colors
- Windows Terminal and modern terminals work best

## Learning Resources

- Type `vimtutor` in your terminal for a Vim basics tutorial
- `:help` - Comprehensive built-in documentation
- Press `Space` and explore the keybindings with which-key

Happy coding! 🚀
