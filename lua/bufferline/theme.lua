local colors = require("nord.colors")

local setting = {
	fill = colors.nord0_gui,
	indicator = colors.nord9_gui,
	bg = colors.nord0_gui,
	buffer_bg = colors.nord0_gui,
	buffer_bg_selected = colors.nord1_gui,
	buffer_bg_visible = "#2A2F3A",
	bold = true,
	italic = true,
}

local M = {}
M.highlights = function(new_setting)
	if new_setting ~= nil then
		for key, value in pairs(new_setting) do
			setting[key] = value
		end
	end

	local fill = setting.fill
	local indicator = setting.indicator
	local bg = setting.bg
	local buffer_bg = setting.bg
	local buffer_bg_selected = setting.buffer_bg_selected
	local buffer_bg_visible = setting.buffer_bg_visible
	local bold = setting.bold
	local italic = setting.italic

	return {
		fill = {
			bg = fill,
		},
		background = {
			fg = colors.nord4_gui,
			bg = bg,
		},

		buffer_selected = {
			fg = colors.nord4_gui,
			bg = buffer_bg_selected,
			italic = italic,
		},
		buffer_visible = {
			fg = colors.nord4_gui,
			bg = buffer_bg_visible,
			italic = italic,
		},

		numbers = {
			fg = colors.nord4_gui,
			bg = buffer_bg,
		},
		numbers_selected = {
			fg = colors.nord4_gui,
			bg = buffer_bg_selected,
		},
		numbers_visible = {
			fg = colors.nord4_gui,
			bg = buffer_bg_visible,
			italic = italic,
		},

		diagnostic = {
			fg = colors.nord4_gui,
			bg = buffer_bg,
		},
		diagnostic_selected = {
			fg = colors.nord4_gui,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		diagnostic_visible = {
			fg = colors.nord4_gui,
			bg = buffer_bg_visible,
		},

		hint = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg,
		},
		hint_visible = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg_visible,
		},
		hint_selected = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		hint_diagnostic = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg,
		},
		hint_diagnostic_visible = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg_visible,
		},
		hint_diagnostic_selected = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},

		info = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg,
		},
		info_visible = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg_visible,
		},
		info_selected = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		info_diagnostic = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg,
		},
		info_diagnostic_visible = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg_visible,
		},
		info_diagnostic_selected = {
			fg = colors.nord4_gui,
			sp = colors.nord10_gui,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},

		warning = {
			fg = colors.nord4_gui,
			sp = colors.nord13_gui,
			bg = buffer_bg,
		},
		warning_visible = {
			fg = colors.nord4_gui,
			sp = colors.nord13_gui,
			bg = buffer_bg_visible,
		},
		warning_selected = {
			fg = colors.nord4_gui,
			sp = colors.nord13_gui,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		warning_diagnostic = {
			fg = colors.nord4_gui,
			sp = colors.nord13_gui,
			bg = buffer_bg,
		},
		warning_diagnostic_visible = {
			fg = colors.nord4_gui,
			sp = colors.nord13_gui,
			bg = buffer_bg_visible,
		},
		warning_diagnostic_selected = {
			fg = colors.nord4_gui,
			sp = colors.nord13_gui,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		error = {
			fg = colors.nord4_gui,
			sp = colors.nord11_gui,
			bg = buffer_bg,
		},
		error_visible = {
			fg = colors.nord4_gui,
			sp = colors.nord11_gui,
			bg = buffer_bg_visible,
		},
		error_selected = {
			fg = colors.nord4_gui,
			sp = colors.nord11_gui,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		error_diagnostic = {
			fg = colors.nord4_gui,
			sp = colors.nord11_gui,
			bg = buffer_bg,
		},
		error_diagnostic_visible = {
			fg = colors.nord4_gui,
			sp = colors.nord11_gui,
			bg = buffer_bg_visible,
		},
		error_diagnostic_selected = {
			fg = colors.nord4_gui,
			sp = colors.nord11_gui,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},

		close_button = {
			fg = colors.nord4_gui,
			bg = buffer_bg,
		},
		close_button_visible = {
			fg = colors.nord4_gui,
			bg = buffer_bg_visible,
		},
		close_button_selected = {
			fg = colors.nord4_gui,
			bg = buffer_bg_selected,
		},

		duplicate = {
			fg = colors.nord4_gui,
			bg = buffer_bg,
		},
		duplicate_selected = {
			fg = colors.nord4_gui,
			bg = buffer_bg_selected,
		},
		duplicate_visible = {
			fg = colors.nord4_gui,
			bg = buffer_bg_visible,
		},

		separator = {
			fg = fill,
			bg = buffer_bg,
		},
		separator_selected = {
			fg = fill,
			bg = buffer_bg_selected,
		},
		separator_visible = {
			fg = fill,
			bg = buffer_bg_visible,
		},
		modified = {
			fg = colors.nord4_gui,
			bg = buffer_bg,
		},
		modified_selected = {
			fg = colors.nord4_gui,
			bg = buffer_bg_selected,
		},
		modified_visible = {
			fg = colors.nord4_gui,
			bg = buffer_bg_visible,
		},
		indicator_selected = {
			fg = indicator,
			bg = buffer_bg_selected,
		},
		indicator_visible = {
			fg = indicator,
			bg = buffer_bg_visible,
		},
		pick = {
			fg = colors.nord4_gui,
			bg = buffer_bg,
			bold = bold,
			italic = italic,
		},
		pick_selected = {
			fg = colors.nord4_gui,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		pick_visible = {
			fg = colors.nord4_gui,
			bg = buffer_bg_visible,
			bold = bold,
			italic = italic,
		},
		tab = {
			fg = colors.nord4_gui,
			bg = colors.nord0_gui,
		},
		tab_selected = {
			fg = colors.nord4_gui,
			bg = colors.nord1_gui,
		},
		tab_separator = {
			fg = colors.nord0_gui,
			bg = colors.nord0_gui,
		},
		tab_separator_selected = {
			fg = colors.nord1_gui,
			bg = colors.nord1_gui,
		},
		tab_close = {
			fg = colors.nord4_gui,
			bg = colors.nord0_gui,
		},
		offset_separator = {
			fg = colors.nord2_gui,
			bg = colors.sidebar,
		},
		trunc_marker = {
			fg = colors.nord3_gui,
			bg = colors.nord0_gui,
		},
	}
end

return M
