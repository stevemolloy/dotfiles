local M = {
    "nvim-treesitter/nvim-treesitter",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end,
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}

return { M }

