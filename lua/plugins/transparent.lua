return {
  "xiyaowong/nvim-transparent",
  opts = {
    groups = {
      "NormalFloat",
      "OctoEditable",
    },
  },
  config = function()
    require("transparent").setup({})
  end,
}
