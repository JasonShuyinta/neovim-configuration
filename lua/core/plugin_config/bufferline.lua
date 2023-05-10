vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    numbers = "ordinal",
    separator_style = "slant",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = true
      }
    }
  }
}
