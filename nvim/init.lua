-- The package manager
require("config.lazy")

-- Today's favourite colourscheme
vim.cmd.colorscheme "catppuccin-mocha"

-- <space> is more comfortable as the <Leader> key
vim.g.mapleader = " "

-- Line numbering
vim.opt.relativenumber = true
vim.opt.number = true

-- Highlight yanked characters
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- NvimTree keymaps
vim.keymap.set('n', "<C-n>", "<cmd> NvimTreeToggle <CR>")

-- LSP stuff
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)

-- Bufferline
vim.keymap.set('n', '<tab>', "<cmd> BufferLineCycleNext <CR>")
vim.keymap.set('n', '<S-tab>', "<cmd> BufferLineCyclePrev <CR>")

-- nvim-gdb
vim.api.nvim_exec([[
  let w:nvimgdb_termwin_command = "belowright vnew"
  let w:nvimgdb_codewin_command = "vnew"
]], false)

