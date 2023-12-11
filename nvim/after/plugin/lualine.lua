local wpm = require("wpm")
require("lualine").setup({
	options = {
		icons_enabled = true,
		-- theme = "onedark",
		component_separators = { left = "|", right = "|" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {},
		always_divide_middle = true,
		globalstatus = true,
	},
	sections = {
		lualine_a = { "mode", "tab" },
		lualine_c = { },
		lualine_b = {
			{
				"buffers",
				show_filename_only = true, -- Shows shortened relative path when set to false.
				hide_filename_extension = false, -- Hide filename extension when set to true.
				show_modified_status = true, -- Shows indicator when the buffer is modified.
				-- mode = 2,

				max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
				filetype_names = {
					TelescopePrompt = "Telescope",
					dashboard = "Dashboard",
					packer = "Packer",
					fzf = "FZF",
					alpha = "Alpha",
					NvimTree = "NvimTree",
				},
				use_mode_colors = true,
				buffers_color = {
					inactive = "lualine_c_inactive", -- Color for active buffer.
					active = "lualine_a_inactive", -- Color for inactive buffer.
				},
				symbols = {
					modified = " ●", -- Text to show when the buffer is modified
					alternate_file = "", -- Text to show to identify the alternate file
					directory = "", -- Text to show when the buffer is a directory
				},
			},
		},
		lualine_x = {"encoding", "fileformat", "filetype" },
		lualine_y = { "branch", "diff", "diagnostics" },
		lualine_z = { "progress", "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = { "nvim-tree" },
})
