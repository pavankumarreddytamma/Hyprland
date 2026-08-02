-----------------------
---- LOOK AND FEEL ----
-----------------------


hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 8,

        border_size = 2,

        col = {
            active_border   = { colors = {"rgba(ff97b9b8)", "rgba(370513cc)"}, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,


        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 2,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 0.8,

        shadow = {
            enabled      = false,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = false,
            size      = 8,
            passes    = 2,
            vibrancy  = 0.2,
            noise = 0,
            new_optimizations = true,
        },

        motion_blur = {
            enabled = false,
            samples = 12,
        },
    },

    animations = {
        enabled = true,
    },
})


hl.curve("animation", {type = "bezier",points = {{0.35, 0.52},{0.35, 0.98},}})
hl.curve("animation1", {type = "bezier",points = {{0.26, 0.49},{0.52, 0.77},}})
hl.curve("fancy", {type = "bezier", points = {{0.86, 0.55} , {0, 1.22},}})



hl.animation({ leaf = "global",        enabled = true,  speed = 7,bezier = "animation" })
hl.animation({ leaf = "border",        enabled = true,  speed = 7, bezier = "animation" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 7, bezier = "fancy"})
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 7, bezier = "fancy", style = "slide"})
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 7, bezier = "fancy", style = "slide"})
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 7, bezier = "animation" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 7, bezier = "animation" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 7, bezier = "animation" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 7, bezier = "animation" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 7, bezier = "animation", style = "slide" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 7, bezier = "animation", style = "slide" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 7, bezier = "animation" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 7, bezier = "animation" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 7, bezier = "fancy", style = "slide" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 7, bezier = "fancy", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 7, bezier = "fancy", style = "slide" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7, bezier = "animation" })

hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})


hl.config({
    master = {
        new_status = "master",
    },
})


hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
