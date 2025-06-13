return {
  "nvim-neo-tree/neo-tree.nvim",
 
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "muniftanjim/nui.nvim",
  },
  
  lazy = false, 
  
  opts = {
  },

  config = function() 
    vim.keymap.set("n", "<leader>e", ":Neotree right reveal toggle float<CR>")
  end
}
