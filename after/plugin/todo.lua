local ok, todo = pcall(require, "todo")

if not ok then
    print("todo not installed")
    return
end

vim.keymap.set('n', '<Leader>tt', todo.findTodos)
vim.keymap.set('n', '<Leader>tf', todo.findFixes)

