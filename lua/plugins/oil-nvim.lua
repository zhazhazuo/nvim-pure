local spec = {
  {
    "stevearc/oil.nvim",
    opts = {},
    event = "VeryLazy",
    cmd = "Oil",
    keys = {
      {
        "<leader>e",
        function()
          require("oil").open()
        end,
        desc = "Open parent directory",
      },
    },
  },
}
return spec
