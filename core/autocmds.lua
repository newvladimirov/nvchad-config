local fn = vim.fn

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- General Settings
local general = augroup("General Settings", { clear = true })

vim.cmd [[autocmd FileType json setlocal shiftwidth=2 tabstop=2]]
vim.cmd [[autocmd FileType scss setlocal shiftwidth=2 tabstop=2]]
vim.cmd [[autocmd FileType css setlocal shiftwidth=2 tabstop=2]]
vim.cmd [[autocmd FileType lua setlocal shiftwidth=2 tabstop=2]]

function close_term()
  require("toggleterm").exec "exit"
end

-- vim.api.nvim_command('command! wqa :lua close_term()<CR>:wqa')
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  pattern = { "*" },
  command = "highlight link CursorLine CursorColumn",
})

autocmd("VimEnter", {
  callback = function(data)
    local treeApi = require "nvim-tree.api"
    treeApi.tree.toggle_gitignore_filter()

    -- buffer is a directory
    local directory = vim.fn.isdirectory(data.file) == 1

    -- change to the directory
    if directory then
      vim.cmd.cd(data.file)
      -- open the tree
      treeApi.tree.open()
    end
  end,
  group = general,
  desc = "Open NvimTree when it's a Directory",
})

-- autocmd({ "FocusLost", "BufLeave", "BufWinLeave", "InsertLeave" }, {
--   callback = function()
--     if vim.bo.filetype ~= "" and vim.bo.buftype == "" then
--       vim.cmd "silent! w"
--     end
--   end,
--   group = general,
--   desc = "Auto Save",
-- })
