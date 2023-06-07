local plugins = {
  {
    "tpope/vim-fugitive",
    lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "ansible-language-server",
        "terraform-ls",
        "typescript-language-server",
        "bash-language-server",
      }
    }
  },
  {
    "pearofducks/ansible-vim",
    ft = "yaml"
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 0,
      },
      current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d %H:%M> - <summary>',
    }
  }
}

return plugins
