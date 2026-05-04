return {
  {
    "ahmedkhalf/project.nvim",
    opts = function(_, opts)
      opts.detection_methods = { "pattern" }
      opts.patterns = { ".git" }
    end,
  },
}
