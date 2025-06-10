-- region installLazy

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"

	local out = vim.fn.system({ 
    "git", 
    "clone", 
    "--filter=blob:none", 
    "--branch=stable", 
    lazyrepo, 
    lazypath 
  })

  if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ 
        "Failed to clone lazy.nvim:\n", 
        "ErrorMsg" 
      },
			{ 
        out, 
        "WarningMsg" 
      },
			{ 
        "\nPress any key to exit..." 
      },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

-- endregion

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.keymap.set("n", "<leader>e", ":Explore<CR>")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua", "python", "javascript" },  -- типы файлов
  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    if ft == "lua" then
      vim.opt_local.foldmethod = "marker"
      vim.opt_local.foldmarker = "-- region,-- endregion"  -- для Lua
    elseif ft == ("python" or "ruby") then
      vim.opt_local.foldmethod = "marker"
      vim.opt_local.foldmarker = "# region,# endregion"  -- для Python
    elseif ft == "javascript" then
      vim.opt_local.foldmethod = "marker"
      vim.opt_local.foldmarker = "// region,// endregion"  -- для Markdown
    end
  end
})

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
