return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" }),

  config = function()
    require("oil").setup {
      default_file_explorer = true,
      view_options = {
        show_hidden = true
      },
    }
  end
}
