o.bind("PRINT", "Screenshot", "omarchy-capture-screenshot")
o.bind(
	"ALT + PRINT",
	"Screenrecording",
	"omarchy-capture-screenrecording --stop-recording || omarchy-menu toggle trigger.capture.screenrecord"
)
o.bind("SUPER + ALT + PRINT", "Extract text (OCR) from screenshot", "omarchy-capture-text")

local selection_layers = 0
local selection_binds = {}

hl.on("layer.opened", function(layer)
	if layer.namespace == "selection" then
		selection_layers = selection_layers + 1
		if selection_layers == 1 then
			selection_binds = {
				hl.bind(
					"RETURN",
					hl.dsp.exec_cmd("omarchy-capture-region --take-window"),
					{ description = "Capture highlighted window" }
				),
				hl.bind(
					"CTRL + RETURN",
					hl.dsp.exec_cmd("omarchy-capture-region --take-fullscreen"),
					{ description = "Capture entire screen" }
				),
				hl.bind(
					"TAB",
					hl.dsp.exec_cmd("omarchy-capture-region --select-window next"),
					{ description = "Select next window to capture" }
				),
				hl.bind(
					"CTRL + TAB",
					hl.dsp.exec_cmd("omarchy-capture-region --select-window prev"),
					{ description = "Select previous window to capture" }
				),
			}
			for _, direction in ipairs({ "left", "right", "up", "down" }) do
				table.insert(
					selection_binds,
					hl.bind(
						direction:upper(),
						hl.dsp.exec_cmd("omarchy-capture-region --select-window " .. direction),
						{ description = "Select window to capture" }
					)
				)
			end
		end
	end
end)

hl.on("layer.closed", function(layer)
	if layer.namespace == "selection" and selection_layers > 0 then
		selection_layers = selection_layers - 1
		if selection_layers == 0 then
			for _, keybind in ipairs(selection_binds) do
				keybind:unbind()
			end
			selection_binds = {}
		end
	end
end)
