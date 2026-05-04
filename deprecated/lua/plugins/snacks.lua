return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      keys = {
        ["_"] = "toggle_ignore",
      },
      defaults = {
        hidden = true,
        ignored = false, -- 👈 fuerza globalmente
      },
      win = {
        list = {
          keys = {
            ["j"] = "list_up",
            ["k"] = "list_down",
          },
        },
      },
    },
  },
}
