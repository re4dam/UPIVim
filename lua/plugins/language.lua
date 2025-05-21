require("lspconfig").ruff.setup({})

return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        -- pyright = {},
        -- clangd SHOULD be automatically installed
        clangd = {},
        -- ruff SHOULD be automatically installed
        ruff = {},
        jdtls = {},
      },
    },
  },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "python",
        "c",
        "cpp",
        "php",
        "java",
        "toml",
        "jsonc",
      },
    },
  },

  -- extend the existing `ensure_installed` list
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     opts.ensure_installed = opts.ensure_installed or {}
  --     vim.list_extend(opts.ensure_installed, {
  --       "tsx",
  --       "typescript",
  --     })
  --   end,
  -- },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "clangd",
        "ruff",
      },
    },
    {
      "jwalton512/vim-blade",
      config = function()
        -- Optional: Add custom configurations if needed
        vim.cmd([[autocmd BufNewFile,BufRead *.blade.php set filetype=blade]])
      end,
    },
  },
  {
    "mfussenegger/nvim-jdtls",
  },
}
