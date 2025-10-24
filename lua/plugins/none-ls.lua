-- none-ls.nvim: Formatting and linting using LSP
return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          -- Lua
          null_ls.builtins.formatting.stylua,

          -- Python
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.isort,
          null_ls.builtins.diagnostics.ruff,

          -- JavaScript/TypeScript
          null_ls.builtins.formatting.prettier.with({
            filetypes = {
              "javascript",
              "javascriptreact",
              "typescript",
              "typescriptreact",
              "vue",
              "css",
              "scss",
              "less",
              "html",
              "json",
              "jsonc",
              "yaml",
              "markdown",
              "graphql",
              "handlebars",
            },
          }),

          -- Shell
          null_ls.builtins.formatting.shfmt,
          null_ls.builtins.diagnostics.shellcheck,

          -- General
          null_ls.builtins.code_actions.gitsigns,
        },

        -- Format on save (optional - comment out if you don't want auto-format)
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
              end,
            })
          end
        end,
      })

      -- Keymap for manual formatting
      vim.keymap.set("n", "<leader>fm", function()
        vim.lsp.buf.format({ async = true })
      end, { desc = "Format buffer (none-ls)" })
    end,
  },
}
