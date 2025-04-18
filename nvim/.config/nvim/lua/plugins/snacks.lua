return {
  {
    "folke/snacks.nvim",
    --@type snacks.Config
    opts = {
      picker = {
        hidden = true,
        sources = {
          files = { hidden = true },
        },
      },
    },
  },
}
