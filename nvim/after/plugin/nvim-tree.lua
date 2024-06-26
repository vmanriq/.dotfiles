
local api = require "nvim-tree.api"
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()
local function my_on_attach(bufnr)

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
end


vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', { desc = 'nvim-tree: Toggle' })
-- create keymap to create files
--vim.keymap.set('n', '<leader>cf', api.tree.fs.create, { desc = 'nvim-tree: Create File' })

-- OR setup with some options
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    on_attach = my_on_attach,
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})
