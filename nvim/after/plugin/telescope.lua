local builtin = require('telescope.builtin')
local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
    defaults = {
        file_ignore_patterns = {"node_modules"},
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
          },
        },
    }
}
telescope.load_extension('noice')
--config
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
    builtin.grep_string({search = vim.fn.input("Grep > ")});
end)
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- ignore node_modules
--
--
