return {
  "mistweaverco/kulala.nvim",
  ft = { "http", "rest" },
  keys = {
    { "<leader>Rs", function() require("kulala").run() end,         desc = "Send request" },
    { "<leader>Ra", function() require("kulala").run_all() end,     desc = "Send all requests" },
    { "<leader>Rb", function() require("kulala").scratchpad() end,  desc = "Open scratchpad" },
    { "<leader>Rt", function() require("kulala").toggle_view() end, desc = "Toggle Headers/Body" },
  },
  opts = {
    display_mode = "float", -- "split" o "float"
    show_icons = "on",
    global_keymaps = false,
  },
}
