vim.opt.wrap = false
vim.opt.nu = true --:set number
vim.opt.relativenumber = true

--line spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.termguicolors = true

--load netrw with nvim
vim.cmd([[
    augroup loading_netrwPlugin
    autocmd!
    autocmd VimEnter * :silent! Explore
    augroup END
]])

