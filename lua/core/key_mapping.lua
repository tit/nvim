vim.keymap.set(
  "n",
  "<leader>w",
  ":bdelete<CR>",
  {
    desc = "Close current buffer"
  }
)

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", {desc = "Next tab"})
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {desc = "Prev tab"})

