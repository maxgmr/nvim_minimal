local backup = "desert"

local status_ok, gruvbox = pcall(require, "gruvbox")
if status_ok then
	gruvbox.setup({
		terminal_colors = true, -- add neovim terminal colors
		undercurl = true,
		underline = true,
		bold = true,
		italic = {
			strings = true,
			emphasis = true,
			comments = true,
			operators = false,
			folds = true,
		},
		strikethrough = true,
		invert_selection = false,
		invert_signs = false,
		invert_tabline = false,
		invert_intend_guides = false,
		inverse = true, -- invert background for search, diffs, statuslines and errors
		contrast = "", -- can be "hard", "soft" or empty string
		palette_overrides = {
			light0 = "#ebdbb2",
		},
		overrides = {},
		dim_inactive = true,
		transparent_mode = false,
	})

	vim.o.background = "dark"

	local colourscheme = "gruvbox"
	local set_status_ok, _ = pcall(vim.cmd, "colorscheme " .. colourscheme)

	if not set_status_ok then
		vim.notify("ERROR: Colour scheme " .. colourscheme .. " not found.")
		return
	end
else
	local set_status_ok, _ = pcall(vim.cmd, "colorscheme " .. backup)

	if not set_status_ok then
		vim.notify("ERROR: Backup colour scheme " .. backup .. " not found.")
		return
	end
end
