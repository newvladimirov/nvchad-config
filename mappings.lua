---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- Todo: make a duplicate line command
    -- ["<leader>D"] = {"Iy$<cr>p"},
    ["<leader>cu"] = { "<cmd> TypescriptRemoveUnused<CR>", "Remove unused TS imports" },
    ["<leader>ci"] = { "<cmd> TypescriptAddMissingImports<CR>", "Add missing TS imports" },

    ["<C-h>"] = { "<cmd> NvimTmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> NvimTmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> NvimTmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> NvimTmuxNavigateUp<CR>", "window up" },
    ["<leader>cf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
    ["<leader>gg"] = {
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new { cmd = "lazygit", hidden = true, direction = "float" }

        lazygit:toggle()
      end,
      "Toggle LazyGit",
    },
    ["<C-\\>"] = {
      function()
        require("toggleterm").toggle()
      end,
      "Toggle term",
    },
    ["<leader>du"] = {
      function()
        require("package-info").update()
      end,
      "Update npm dependency",
    },
    ["<leader>fr"] = {
      function()
        require("spectre").toggle()
      end,
      "Toggle Spectre",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.tabufline = {
  n = {
    ["<leader>w"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },

    ["<S-h>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
    ["<S-l>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>fw"] = { "<cmd> Telescope live_grep_args <CR>", "Live grep args" },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeFindFileToggle <CR>", "Toggle nvimtree" },
    ["<S-e>"] = {
      "<cmd> NvimTreeFindFile <CR>",
      "Find file in tree",
    },
  },
}

-- more keybinds!

return M
