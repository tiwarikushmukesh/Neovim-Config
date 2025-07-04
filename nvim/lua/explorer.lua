require("nvim-tree").setup({
  git = {
    enable = true,
    ignore = false,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    width = 30,
    side = "left",
    relativenumber = true,
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "icon",
    indent_markers = {
      enable = true,
    },
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
    },
  },
})
