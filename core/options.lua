local options = {
  number = true,
  relativenumber = true,
  wrap = false,
  scrolloff = 8,
  virtualedit = "block",
  undofile = true,
  shell = "/bin/zsh",
  cursorline = true,
  mouse = "i",
  mousefocus = true,
  expandtab = true,
  shiftwidth = 4,
  tabstop = 4,
  softtabstop = 4,
  swapfile = false
  -- smartindent = true,
}

for name, value in pairs(options) do
  vim.opt[name] = value
end

