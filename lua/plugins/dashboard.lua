-- Dashboard: Start screen for Neovim
return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("dashboard").setup({
        theme = "hyper",
        config = {
          week_header = {
            enable = true,
          },
          shortcut = {
            {
              desc = " Update",
              group = "@property",
              action = "Lazy update",
              key = "u",
            },
            {
              icon = " ",
              icon_hl = "@variable",
              desc = "Files",
              group = "Label",
              action = "Telescope find_files",
              key = "f",
            },
            {
              desc = " Projects",
              group = "DiagnosticHint",
              action = "Telescope projects",
              key = "p",
            },
            {
              desc = " Config",
              group = "Number",
              action = "edit $MYVIMRC",
              key = "c",
            },
          },
          project = {
            enable = true,
            limit = 8,
            icon = " ",
            label = "Recent Projects",
            action = "Telescope find_files cwd=",
          },
          mru = {
            limit = 10,
            icon = " ",
            label = "Recent Files",
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return {
              "",
              "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
            }
          end,
        },
      })

      -- Disable statusline and other elements on dashboard
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "dashboard",
        callback = function()
          vim.opt_local.laststatus = 0
          vim.opt_local.showtabline = 0
        end,
      })

      vim.api.nvim_create_autocmd("BufLeave", {
        pattern = "*",
        callback = function()
          if vim.bo.filetype == "dashboard" then
            vim.opt.laststatus = 3
            vim.opt.showtabline = 2
          end
        end,
      })
    end,
  },
}
