-- Symbols Outline (Function/Class tree)
return {
  {
    "hedyhli/outline.nvim",
    config = function()
      require("outline").setup({
        outline_window = {
          position = "left",
          width = 25,
          relative_width = false,
        },
        symbol_folding = {
          autofold_depth = 1,
        },
        symbols = {
          filter = nil,
        },
      })

      -- Keymaps
      vim.keymap.set("n", "<leader>s", ":Outline<CR>", { desc = "Toggle symbols outline" })
    end,
  },
}
