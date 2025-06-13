return {
  {
    'akinsho/bufferline.nvim',

    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },

    config = function()
      require("bufferline").setup()

      vim.keymap.set("n", "<leader>w", ":bdelete<CR>", {desc = "Close current window"})
      vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", {desc = "Next tab"})
      vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {desc = "Prev tab"})
    end
  }
}
