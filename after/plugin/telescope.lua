local status, builtin = pcall(require, 'telescope.builtin')

if (not status) then
    print("Telescope not installed");
    return
end

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<C-s>', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
