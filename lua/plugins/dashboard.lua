return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        {
          theme = 'hyper',
          config = {
            week_header = {
              enable = false,
            },
            shortcut = {},
            packages = { enable = false },
            project = { enable = false },
            mru = { enable = false },
            footer = {},
            header = {
              [[  ____    _    __  __ _____  _      _____ _____ ____  ]],
              [[ |  _ \  / \  |  \/  |_ _| | |    |_   _| ____|  _ \ ]],
              [[ | | | |/ _ \ | |\/| || |  | |      | | |  _| | |_) |]],
              [[ | |_| / ___ \| |  | || |  | |___   | | | |___|  _ < ]],
              [[ |____/_/   \_\_|  |_|___| |_____|  |_| |_____|_| \_\]],
              [[                                                     ]],
            },
          },
        }
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  }
}
