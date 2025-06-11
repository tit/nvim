vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lua",
    "python",
    "javascript"
  },
  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    if ft == "lua" then
      vim.opt_local.foldmethod = "marker"
      vim.opt_local.foldmarker = "-- region,-- endregion"
    elseif ft == ("python" or "ruby") then
      vim.opt_local.foldmethod = "marker"
      vim.opt_local.foldmarker = "# region,# endregion"
    elseif ft == "javascript" then
      vim.opt_local.foldmethod = "marker"
      vim.opt_local.foldmarker = "// region,// endregion"
    end
  end
})
