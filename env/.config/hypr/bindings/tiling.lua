o.bind("SUPER + W", "Close window", hl.dsp.window.close())
o.bind("SUPER + ALT + W", "Close all windows", "omarchy-hyprland-window-close-all")

o.bind("SUPER + H", "Focus on left window", hl.dsp.focus({ direction = "l" }))
o.bind("SUPER + L", "Focus on right window", hl.dsp.focus({ direction = "r" }))
o.bind("SUPER + K", "Focus on above window", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + J", "Focus on below window", hl.dsp.focus({ direction = "d" }))

o.bind("SUPER + ALT + H", "Swap window to the left", hl.dsp.window.swap({ direction = "l" }))
o.bind("SUPER + ALT + L", "Swap window to the right", hl.dsp.window.swap({ direction = "r" }))
o.bind("SUPER + ALT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("SUPER + ALT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))

o.bind("SUPER + SHIFT + H", "Swap window to the left", hl.dsp.window.swap({ direction = "l" }))
o.bind("SUPER + SHIFT + L", "Swap window to the right", hl.dsp.window.swap({ direction = "r" }))
o.bind("SUPER + SHIFT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("SUPER + SHIFT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))

o.bind("SUPER + U", "Switch to workspace 1", hl.dsp.focus({ workspace = 1 }))
o.bind("SUPER + I", "Switch to workspace 2", hl.dsp.focus({ workspace = 2 }))
o.bind("SUPER + O", "Switch to workspace 3", hl.dsp.focus({ workspace = 3 }))
o.bind("SUPER + P", "Switch to workspace 4", hl.dsp.focus({ workspace = 4 }))
o.bind("SUPER + BRACKETLEFT", "Switch to workspace 5", hl.dsp.focus({ workspace = 5 }))

o.bind("SUPER + ALT + U", "Move window to workspace 1", hl.dsp.window.move({ workspace = 1 }))
o.bind("SUPER + ALT + I", "Move window to workspace 2", hl.dsp.window.move({ workspace = 2 }))
o.bind("SUPER + ALT + O", "Move window to workspace 3", hl.dsp.window.move({ workspace = 3 }))
o.bind("SUPER + ALT + P", "Move window to workspace 4", hl.dsp.window.move({ workspace = 4 }))
o.bind("SUPER + ALT + BRACKETLEFT", "Move window to workspace 5", hl.dsp.window.move({ workspace = 5 }))

o.bind(
	"SUPER + CTRL + ALT + U",
	"Move window silently to workspace 1",
	hl.dsp.window.move({ workspace = 1, follow = false })
)
o.bind(
	"SUPER + CTRL + ALT + I",
	"Move window silently to workspace 2",
	hl.dsp.window.move({ workspace = 2, follow = false })
)
o.bind(
	"SUPER + CTRL + ALT + O",
	"Move window silently to workspace 3",
	hl.dsp.window.move({ workspace = 3, follow = false })
)
o.bind(
	"SUPER + CTRL + ALT + P",
	"Move window silently to workspace 4",
	hl.dsp.window.move({ workspace = 4, follow = false })
)
o.bind(
	"SUPER + CTRL + ALT + BRACKETLEFT",
	"Move window silently to workspace 5",
	hl.dsp.window.move({ workspace = 5, follow = false })
)

for workspace = 1, 10 do
	local key = "code:" .. tostring(workspace + 9)
	o.bind("SUPER + " .. key, "Switch to workspace " .. workspace, hl.dsp.focus({ workspace = tostring(workspace) }))
	o.bind(
		"SUPER + SHIFT + " .. key,
		"Move window to workspace " .. workspace,
		hl.dsp.window.move({ workspace = tostring(workspace) })
	)
	o.bind(
		"SUPER + SHIFT + ALT + " .. key,
		"Move window silently to workspace " .. workspace,
		hl.dsp.window.move({ workspace = tostring(workspace), follow = false })
	)
end

o.bind("SUPER + S", "Toggle scratchpad", hl.dsp.workspace.toggle_special("scratchpad"))
o.bind(
	"SUPER + ALT + S",
	"Move window to scratchpad",
	hl.dsp.window.move({ workspace = "special:scratchpad", follow = false })
)
