-- The package manager
require("config.lazy")

-- Copy to system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Today's favourite colourscheme
vim.cmd.colorscheme "catppuccin-mocha"

-- <space> is more comfortable as the <Leader> key
vim.g.mapleader = " "

-- Line numbering
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

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

-- Oil
vim.keymap.set('n', "<C-N>", "<cmd> Oil --float <CR>")

-- nvim-gdb
vim.api.nvim_exec([[
  let w:nvimgdb_termwin_command = "belowright vnew"
  let w:nvimgdb_codewin_command = "vnew"
]], false)

-- C3lang
vim.filetype.add({
  extension = {
    c3 = "c3",
    c3i = "c3",
    c3t = "c3",
  },
})

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.c3 = {
    install_info = {
        url = "https://github.com/c3lang/tree-sitter-c3",
        files = {"src/parser.c", "src/scanner.c"},
        branch = "main",
    },
}


