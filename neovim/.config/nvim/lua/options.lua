require "nvchad.options"

-- add yours here!

local opt = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Transparent background
vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
]]

-- Line numbers
opt.number = true
opt.relativenumber = true

opt.swapfile = false -- Disable swap file
opt.guicursor = "i:block-blinkwait0-blinkon500-blinkoff500" -- Cursor configuration
