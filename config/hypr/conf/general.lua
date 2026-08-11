local colors = {}
local colorsFile = os.getenv("HOME") .. "/.cache/matugen/hypr-colors.lua"
local colorsHandle = io.open(colorsFile, "r")
if colorsHandle then
    colorsHandle:close()
    colors = dofile(colorsFile)
end

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 20,

        border_size = 2,

        col = {
            active_border   = colors.active_border or "rgba(33ccffee)",
            inactive_border = colors.inactive_border or "rgba(595959aa)",
        },

        resize_on_border = false,

        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },

	screen_shader = os.getenv("HOME") .. "/.config/hypr/conf/vibrance.glsl",
    },

    animations = {
        enabled = true,
    },
})
