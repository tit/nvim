require("core.lazy_install")
require("core.globals")
require("core.key_mapping")
require("core.folding")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

require("lazy").setup({
	{
		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
			opts = {
				ensure_installed = {},
			},
		},
		{
			"catppuccin/nvim",
			name = "catppuccin",
			priority = 1000,
		},
		{
			"nvim-telescope/telescope.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
		},
	},
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fo", builtin.find_files, {})
vim.keymap.set("n", "<leader>ff", builtin.live_grep, {})

require("catppuccin").setup()
vim.cmd.colorscheme("catppuccin")
