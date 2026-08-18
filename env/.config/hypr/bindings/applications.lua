o.bind("SUPER + RETURN", "Terminal", { omarchy = "terminal" })
o.bind("SUPER + B", "Browser", { omarchy = "browser" })

o.bind("SUPER + F", "File manager", { omarchy = "nautilus" })
o.bind("SUPER + ALT + F", "File manager (cwd)", { omarchy = "nautilus-cwd" })

o.bind("XF86Calculator", "Calculator", "omacalc")
o.bind("SUPER + C", "Calendar", "omarchy-shell shell toggle omarchy.clock")
o.bind("SUPER + ALT + C", "Color picker", "pkill hyprpicker || hyprpicker -a")
o.bind("SUPER + S", "Share", "omarchy-menu toggle share")

o.bind("SUPER + CTRL + E", "Emojis", "omarchy-shell shell toggle omarchy.emojis")

o.bind("SUPER + M", "Music TUI", { tui = "cliamp", focus = true })
