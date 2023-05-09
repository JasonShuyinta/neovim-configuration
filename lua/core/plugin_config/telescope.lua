local builtin = require('telescope.builtin')

vim.keymap.set('n','<c-f>', function() require('telescope.builtin').find_files({
  hidden = true
})
end, { noremap = true, silent = true })
vim.keymap.set('n','<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})

