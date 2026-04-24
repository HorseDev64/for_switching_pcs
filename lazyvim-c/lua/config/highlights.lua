-- macros y preprocesadores se pintan como Normal
vim.api.nvim_set_hl(0, "@preproc", { link = "Normal" })
vim.api.nvim_set_hl(0, "@macro", { link = "Normal" })
