local cmp = require "cmp"

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
        "goimports",
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
        side = "left"
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
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    opts = function ()
      return require "custom.configs.copilot"
    end,
    config = function(_, opts)
      require("copilot").setup(opts)
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      M.completion.completeopt = "menu,menuone,noselect"
      M.mapping["<CR>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = false,
      }

      M.mapping["<C-j>"] = cmp.mapping(function(_fallback)
        cmp.mapping.abort()
        require("copilot.suggestion").accept_line()
      end, {
          "i",
          "s",
        })

      table.insert(M.sources, {name = "crates"})
      return M
    end,
  },
  {
    'saecki/crates.nvim',
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates  = require('crates')
      crates.setup(opts)
      require('cmp').setup.buffer({
        sources = { { name = "crates" }}
      })
      crates.show()
      require("core.utils").load_mappings("crates")
    end,
  },
  {
    "folke/zen-mode.nvim",
    lazy = false,
  },
  {
    "tpope/vim-surround",
    lazy = false
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.noice"
    end,
    config = function()
      require("noice").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
}

return plugins
