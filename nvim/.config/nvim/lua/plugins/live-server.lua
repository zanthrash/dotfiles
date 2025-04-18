return {
  {
    "barrett-ruth/live-server.nvim",
    opts = {
      build = "npm add --global live-server",
      cmd = { "LiveServerStart", "LiveServerStop" },
      config = true,
    },
  },
}
