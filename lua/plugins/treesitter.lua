-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "master",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "lua","tsx","c","php","python","markdown","markdown_inline",
        "yaml","bash","html","dockerfile","css","go","json","javascript",
        "gitignore",
      },
      auto_install = false, 
    })
    end
}
