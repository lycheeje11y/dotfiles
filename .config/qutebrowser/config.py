# load autoconfig
config.load_autoconfig()

# appearance stuff
config.source("everblush.py")
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.preferred_color_scheme = "dark"
c.zoom.default = "75%"

# tabs stuff
c.tabs.position = "left"
c.tabs.padding = {"bottom": 10, "left": 10, "right": 10, "top": 10}
c.tabs.title.format = "{audio}{current_title}"
c.tabs.width = 200
c.tabs.show = "always"

# statusbar stuff
c.statusbar.padding = {"bottom": 10, "left": 10, "right": 10, "top": 10}
