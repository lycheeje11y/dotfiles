# ~/.config/qutebrowser/everblush.py -*- Everblush theme.

# Colors.
bg0 = "#141b1e"
bg1 = "#232a2d"
bg2 = "#2d3437"
fg0 = "#dadada"
fg1 = "#b3b9b8"
red = "#e54747"
blue = "#67b0e8"
green = "#8ccf7e"
yellow = "#e5c76b"
cyan = "#6cbfbf"
magenta = "#c47fd5"

# --- Applying colors --- #

# Completion menu.
c.colors.completion.category.bg = bg1
c.colors.completion.category.border.top = bg0
c.colors.completion.category.border.bottom = bg0
c.colors.completion.category.fg = fg0
c.colors.completion.even.bg = bg1
c.colors.completion.odd.bg = bg1
c.colors.completion.item.selected.bg = bg2
c.colors.completion.item.selected.border.bottom = bg2
c.colors.completion.item.selected.border.top = bg2
c.colors.completion.item.selected.fg = blue
c.colors.completion.item.selected.match.fg = blue
c.colors.completion.match.fg = red
c.colors.completion.odd.bg = bg1
c.colors.completion.scrollbar.fg = fg0
c.colors.completion.scrollbar.bg = bg1

# Statusline.
c.colors.statusbar.caret.bg = bg0
c.colors.statusbar.caret.fg = magenta
c.colors.statusbar.caret.selection.bg = bg0
c.colors.statusbar.caret.selection.fg = red
c.colors.statusbar.command.bg = bg0
c.colors.statusbar.command.fg = fg0
c.colors.statusbar.insert.bg = bg0
c.colors.statusbar.insert.fg = green
c.colors.statusbar.normal.bg = bg0
c.colors.statusbar.normal.fg = fg0
c.colors.statusbar.passthrough.bg = bg0
c.colors.statusbar.passthrough.fg = blue
c.colors.statusbar.private.bg = bg0
c.colors.statusbar.private.fg = fg0
c.colors.statusbar.progress.bg = green
c.colors.statusbar.url.error.fg = red
c.colors.statusbar.url.fg = fg0
c.colors.statusbar.url.hover.fg = cyan
c.colors.statusbar.url.success.http.fg = green
c.colors.statusbar.url.success.https.fg = green
c.colors.statusbar.url.warn.fg = yellow

# Tabline.
c.colors.tabs.bar.bg = bg0
c.colors.tabs.even.bg = bg0
c.colors.tabs.even.fg = fg1
c.colors.tabs.indicator.error = red
c.colors.tabs.indicator.start = blue
c.colors.tabs.indicator.stop = green
c.colors.tabs.indicator.system = "rgb"
c.colors.tabs.odd.bg = bg0
c.colors.tabs.odd.fg = fg1
c.colors.tabs.pinned.even.bg = bg2
c.colors.tabs.pinned.even.fg = fg1
c.colors.tabs.pinned.odd.bg = bg2
c.colors.tabs.pinned.odd.fg = fg1
c.colors.tabs.pinned.selected.even.bg = bg0
c.colors.tabs.pinned.selected.even.fg = green
c.colors.tabs.pinned.selected.odd.bg = bg0
c.colors.tabs.pinned.selected.odd.fg = green
c.colors.tabs.pinned.selected.even.bg = bg0
c.colors.tabs.pinned.selected.even.fg = blue
c.colors.tabs.selected.odd.bg = bg1
c.colors.tabs.selected.odd.fg = fg0
c.colors.tabs.selected.even.bg = bg1
c.colors.tabs.selected.even.fg = fg0

# Hints.
c.colors.hints.bg = bg2
c.colors.hints.fg = fg0
c.colors.hints.match.fg = red
c.hints.border = "2px solid " + bg1

# Messages.
c.colors.messages.error.bg = bg1
c.colors.messages.error.border = bg1
c.colors.messages.error.fg = red
c.colors.messages.info.bg = bg1
c.colors.messages.info.border = bg1
c.colors.messages.info.fg = blue
c.colors.messages.warning.bg = bg1
c.colors.messages.warning.border = bg1
c.colors.messages.warning.fg = yellow

# Download bar.
c.colors.downloads.bar.bg = bg0
c.colors.downloads.error.bg = bg2
c.colors.downloads.error.fg = red
c.colors.downloads.start.bg = bg2
c.colors.downloads.start.fg = blue
c.colors.downloads.stop.bg = bg2
c.colors.downloads.stop.fg = green

# Keyhints.
c.colors.keyhint.bg = bg0
c.colors.keyhint.fg = fg0
c.colors.keyhint.suffix.fg = yellow

# Default color for about:blank pages (or if the css didn't specify)
c.colors.webpage.bg = bg1

# Context menu.
c.colors.contextmenu.disabled.bg = bg1
c.colors.contextmenu.disabled.fg = fg1
c.colors.contextmenu.menu.bg = bg1
c.colors.contextmenu.menu.fg = fg0
c.colors.contextmenu.selected.bg = bg2
c.colors.contextmenu.selected.fg = blue

# Prompts.
c.colors.prompts.bg = bg1
c.colors.prompts.border = "2px solid " + bg0
c.colors.prompts.fg = fg0
c.colors.prompts.selected.bg = bg2
c.colors.prompts.selected.fg = blue
