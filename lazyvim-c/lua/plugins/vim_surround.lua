return {
  "kylechui/nvim-surround",
  version = "*", -- usa la última estable
  config = function()
    require("nvim-surround").setup({
      -- habilita compatibilidad con vim-visual-multi
      keymaps = {
        visual = "<leader>s", -- antes era "S", ahora es "gS"
        normal = "ys",
        insert = "<C-g>s",
      },
      move_cursor = true,
    })
    -- compatibilidad con visual-multi
    vim.g.surround_compat_vim_visual_multi = 1
  end
}
