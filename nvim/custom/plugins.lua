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
        "python-lsp-server",
        "ltex-ls"
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
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "go", "terraform"
      }
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true
          }
        }
      },
      view = {
        side = "right"
      }
    },
    filters = {
      custom = {"^.git", "^node_modules"}
    }
  },
  {
    "editorconfig/editorconfig-vim",
    lazy = false
  },
  {
    "weilbith/nvim-code-action-menu",
    lazy = false
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function ()
      return require "custom.configs.null-ls"
    end
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function (_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "lervag/vimtex",
    ft = "tex",
    lazy = false
  }
  --[[{
    "github/copilot.vim",
    lazy = false
  }
  --]]
}

return plugins
