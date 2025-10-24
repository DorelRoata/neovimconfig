-- ============================================
-- Neovim Beginner Configuration
-- ============================================

-- Set leader key to space (must be set before lazy.nvim)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ============================================
-- Bootstrap lazy.nvim plugin manager
-- ============================================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ============================================
-- Basic Vim Settings
-- ============================================

-- Line numbers
vim.opt.number = true          -- Show line numbers
vim.opt.relativenumber = true  -- Show relative line numbers

-- Indentation
vim.opt.tabstop = 4            -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4         -- Number of spaces for autoindent
vim.opt.expandtab = true       -- Use spaces instead of tabs
vim.opt.smartindent = true     -- Smart autoindenting

-- Search
vim.opt.ignorecase = true      -- Ignore case in search
vim.opt.smartcase = true       -- Override ignorecase if search has uppercase
vim.opt.hlsearch = true        -- Highlight search results
vim.opt.incsearch = true       -- Show search matches as you type

-- UI
vim.opt.termguicolors = true   -- Enable 24-bit RGB colors
vim.opt.showmode = false       -- Don't show mode (statusline shows it)
vim.opt.cursorline = true      -- Highlight current line
vim.opt.signcolumn = "yes"     -- Always show sign column (for git/diagnostics)
vim.opt.wrap = false           -- Don't wrap lines
vim.opt.scrolloff = 8          -- Keep 8 lines above/below cursor
vim.opt.sidescrolloff = 8      -- Keep 8 columns left/right of cursor

-- Syntax highlighting
vim.cmd("syntax enable")       -- Enable syntax highlighting
vim.cmd("filetype plugin indent on")  -- Enable filetype detection

-- File handling
vim.opt.backup = false         -- Don't create backup files
vim.opt.swapfile = false       -- Don't create swap files
vim.opt.undofile = true        -- Enable persistent undo
vim.opt.autoread = true        -- Auto-reload files changed outside vim

-- Completion
vim.opt.completeopt = "menu,menuone,noselect"

-- Mouse
vim.opt.mouse = "a"            -- Enable mouse in all modes

-- Clipboard
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard

-- Shell (fix pwsh not found warning on Windows)
if vim.fn.has("win32") == 1 then
  vim.opt.shell = "cmd.exe"
  vim.opt.shellcmdflag = "/c"
end

-- Split windows
vim.opt.splitright = true      -- Vertical splits go to the right
vim.opt.splitbelow = true      -- Horizontal splits go below

-- ============================================
-- Load Plugins
-- ============================================
require("lazy").setup("plugins")

-- ============================================
-- Basic Keymaps
-- ============================================

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Resize windows with arrows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Better indenting
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

-- Clear search highlights
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- Save file
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })

-- Quit
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- Buffer navigation
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>x", ":bdelete<CR>", { desc = "Close buffer" })
