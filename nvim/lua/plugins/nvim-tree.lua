-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
	'nvim-tree/nvim-tree.lua',
    config = function()
        require('nvim-tree').setup({
			sort = {
				sorter = 'case_sensitive',
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})

        vim.keymap.set('n', '<C-t>', ':NvimTreeToggle<CR>', {})
    end,
}