return {
  {
		"nvim-telescope/telescope.nvim",

		dependencies = {
  		"nvim-lua/plenary.nvim",
		},

    config = function() 
      local telescope_builtin = require("telescope.builtin")

      vim.keymap.set("n", "ff", telescope_builtin.find_files)
      vim.keymap.set("n", "fw", telescope_builtin.live_grep)
    end, 
	},
}
