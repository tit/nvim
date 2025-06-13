return {
  "nvim-neo-tree/neo-tree.nvim",
 
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "muniftanjim/nui.nvim",
  },
  
  lazy = false, 
  
  opts = {
    right = true
  },

  config = function() 
    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
  end
}
