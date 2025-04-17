return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  opts = {
    suggestion = { enabled = true, auto_trigger = true },
    panel = { enabled = true, auto_refresh = true },
  },
}
