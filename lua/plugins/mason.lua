return {
  {
    "mason-org/mason.nvim",

    config = function()
      require("mason").setup({
        ensure_installed = {
          "stylua",
        },
      })
    end
  },
}
