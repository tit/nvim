return {
  {
    'akinsho/bufferline.nvim',

    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },

    config = function()
      require("bufferline").setup({})

      vim.keymap.set("n", "<leader>w", ":bdelete<CR>", {desc = "Close current [w]indow"})
      vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
      vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
    end
  }
}
