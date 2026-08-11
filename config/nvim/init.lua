vim.o.termguicolors = true

local colors_file = vim.fn.expand("~/.cache/tintd/nvim-colors.vim")
if vim.fn.filereadable(colors_file) == 1 then
    vim.cmd.source(colors_file)
end
