---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = -1, -- -1.0 - 1.0, 0 means no modification.
        accel_profile = flat,

        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.2
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})


hl.device({
    name        = "elan0718:01-04f3:30fd-touchpad",
    sensitivity = -0.2,
})