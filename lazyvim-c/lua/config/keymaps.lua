-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- -- -- Salir de Insert con jk-- ~/.config/nvim/lua/config/keymaps.lua
vim.keymap.set("x", "S", function()
  vim.cmd("echo 'Surround Visual Mode'")
end)
vim.keymap.set("n", "s", "<Nop>")
vim.keymap.set("x", "s", "<Nop>")
vim.keymap.set("o", "s", "<Nop>")

vim.g.VM_maps = {
  ["Find Under"]         = "<C-n>",
  ["Find Subword Under"] = "<C-n>",
  ["Skip Region"]        = "<C-x>",
  ["Remove Region"]      = "<C-p>",

  -- navegación tipo vim
  ["Select Cursor Down"] = "k",
  ["Select Cursor Up"]   = "j",
}



vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
-- Salir de insert con jk
vim.keymap.set("i", "jk", "<Esc>", { desc = "Salir de insert con jk" })
vim.keymap.set("n", "_", "<C-u>", { desc = "moverme pa arriba" })
vim.keymap.set("n", "<leader>o", function()
  vim.api.nvim_put({ "" }, "l", true, true)
end, { noremap = true, silent = true })
-- Invertir movimiento vertical
vim.keymap.set("n", "j", "k", { desc = "Mover arriba (invertido)" })
vim.keymap.set("n", "k", "j", { desc = "Mover abajo (invertido)" })
vim.keymap.set("n", ";", "$", { desc = "Ir al final de la linea" })
vim.keymap.set("o", ";", "$", { desc = "Ir al final de la linea" })
vim.keymap.set("n", "<C-v>", "<C-q>", { noremap = true })
vim.keymap.set("x", "sj", "<Plug>(surround-visual)", {})

vim.keymap.set("v", "j", "k", { desc = "Mover arriba (visual)" })
vim.keymap.set("v", "k", "j", { desc = "Mover abajo (visual)" })
vim.keymap.set("v", ";", "$", { desc = "ir al final de la linea" })
--/vim.keymap.set("n", "sj", "<Plug>(surround-operator)", {})

--s sCambiar de buffers (equivalentbje a H / L)
vim.keymap.set("n", "<C-q>", "<cmd>bprev<CR>", { desc = "Buffer anterior" })
vim.keymap.set("n", "<C-e>", "<cmd>bnext<CR>", { desc = "Buffer siguiente" })

vim.keymap.set("n", "<C-S-i>", "0", { desc = "Ir al inicio de la línea" })

vim.keymap.set("n", "<C-i>", "^", { desc = "Ir al primer caracter no espacio" })
vim.keymap.set("v", "<Tab>", "<cmd>normal! ^<CR>", { desc = "Ir al primer caracter no espacio" })

--vim.keymap.set("n", "x", '"_x', { desc = "Borrar sin afectar el registro" })

-- Salir del modo terminal usando jk
vim.keymap.set("t", "jk", [[<C-\><C-n>]], { noremap = true, silent = true })



local map = vim.keymap.set

-- Remapea <leader>as a <leader>ft
map("n", "<leader>as", "<leader>ft", { desc = "Terminal (Root Dir)", remap = true })

-- Remapea <leader>ao a <leader>fT
map("n", "<leader>ao", "<leader>fT", { desc = "Terminal (cwd)", remap = true })
