-- Color scheme configuration
return {
  -- Catppuccin theme (beautiful and easy on the eyes)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Load before other plugins
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
        transparent_background = false,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          telescope = true,
        },
      })
    end,
  },

  -- Matteblack theme
  {
    "tahayvr/matteblack.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("matteblack")
    end,
  },

  -- Vesper theme (minimalist, warm dark theme)
  {
    "datsfilipe/vesper.nvim",
    priority = 1000,
    config = function()
      require("vesper").setup({
        transparent = true,
        italics = {
          comments = true,
          keywords = true,
          functions = true,
          strings = true,
          variables = true,
        },
      })
    end,
  },

  -- Kanagawa Paper theme (soft, paper-like aesthetic)
  {
    "thesimonho/kanagawa-paper.nvim",
    priority = 1000,
    config = function()
      require("kanagawa-paper").setup({
        transparent = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = false },
        statementStyle = { bold = true },
        typeStyle = {},
        variablebuiltinStyle = { italic = true },
      })
    end,
  },

  -- Cyberdream theme (modern, vibrant cyberpunk)
  {
    "scottmckendry/cyberdream.nvim",
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = false,
        italic_comments = true,
        hide_fillchars = false,
        borderless_telescope = false,
        terminal_colors = true,
      })
    end,
  },

  -- Gruvbox theme (retro, warm colors)
  {
    "motaz-shokry/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        transparent_mode = false,
        contrast = "hard", -- Options: hard, medium, soft
        italic = {
          strings = false,
          comments = true,
          operators = false,
          folds = true,
        },
      })
    end,
  },
}
