-- in case it isn't installed
local status, monokaiPro = pcall(require, "monokai-pro")
if not status then
	return
end

monokaiPro.setup({
	transparent_background = true,
	devicons = true,
	styles = {
		comment = { italic = true },
		keyword = { italic = true }, -- any other keyword
		type = { italic = true }, -- (preferred) int, long, char, etc
		storageclass = { italic = true }, -- static, register, volatile, etc
		structure = { italic = true }, -- struct, union, enum, etc
		parameter = { italic = true }, -- parameter pass in function
		annotation = { italic = true },
		tag_attribute = { italic = true }, -- attribute of tag in reactjs
	},
	filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
	-- Enable this will disable filter option
	day_night = {
		enable = true, -- turn off by default
		day_filter = "machine", -- classic | octagon | pro | machine | ristretto | spectrum
		night_filter = "machine", -- classic | octagon | pro | machine | ristretto | spectrum
	},
	plugins = {
		bufferline = {
			underline_selected = false,
			underline_visible = false,
		},
		indent_blankline = {
			context_highlight = "pro", -- default | pro
			context_start_underline = false,
		},
	},
})
local status, _ = pcall(vim.cmd, "colorscheme monokai-pro")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
