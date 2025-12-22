require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlinevim.o ='both' -- to enable cursorline!

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

vim.o.swapfile = false -- Disable swap file
vim.o.guicursor = "i:block-blinkon500-blinkoff500" -- Cursor configuration

-- Transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
