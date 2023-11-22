local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "markdown",
    "markdown_inline",
    "prisma",
    "sql",
    "dockerfile",
    "gitignore",
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<S-space>",
      node_incremental = "<S-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "rome",

    "angular_ls",
    "prisma-language-server",
    "prismals",
    "graphql",
    "jsonls",
    "sqlls",
  },
}

M.telescope = {
    layout_strategy = "vertical"
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  filters = {
    dotfiles = false,
    exclude = {},
  },
  view = {
    width = 40,
  },
  update_focused_file = {
    enable = false,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
