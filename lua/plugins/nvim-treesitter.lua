return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { 
        "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "bash", "dockerfile", "editorconfig", "helm", "jinja", "json", "nginx", "php", "powershell", "python", "regex", "xml"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Enter>", -- set to `false` to disable one of the mappings
          node_incremental = "<Enter>",
          scope_incremental = false,
          node_decremental = "<Backspace>",
        },
      },
    })
  end
}
