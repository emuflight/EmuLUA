
return {
    read           = 94, -- MSP_PID_ADVANCED
    write          = 95, -- MSP_SET_PID_ADVANCED
    title          = "PID Ctrl Settings",
    reboot         = false,
    eepromWrite    = true,
    minBytes       = 23,
    yMinLimit      = 11,
    yMaxLimit      = 52,
    text = {
        { t = "Value",     x = 46,  y = 14, to = SMLSIZE },
        { t = "Emuboost",           x = 80,  y = 11, to = SMLSIZE },
        { t = "Limit",         x = 80,  y = 18, to = SMLSIZE },
        { t = "EmuBoost",        x = 2,  y = 26, to = SMLSIZE },
        { t = "EmuB Yaw",       x = 2,  y = 36, to = SMLSIZE },
        { t = "FeathPID",         x = 2,  y = 46, to = SMLSIZE },
        { t = "iDecay", 	x = 2,  y = 56, to = SMLSIZE },
        { t = "ThrotBoost", 	x = 2,  y = 66, to = SMLSIZE },
        { t = "NFE Racer", 	x = 2,  y = 76, to = SMLSIZE },
        { t = "I Term Rot", 	x = 2,  y = 86, to = SMLSIZE },
        { t = "SPA", 	x = 66,  y = 94, to = SMLSIZE },
        { t = "P",       x = 38, y = 102,  to = SMLSIZE },
        { t = "I",       x = 66, y = 102,  to = SMLSIZE },
        { t = "D",       x = 94, y = 102,  to = SMLSIZE },
        { t = "ROLL",       x = 10, y = 112,  to = SMLSIZE },
        { t = "PITCH",      x = 10, y = 122,  to = SMLSIZE },
        { t = "YAW",        x = 10, y = 132,  to = SMLSIZE },

    },
    fields = {
        -- emuboost
        { x = 53, y = 26, min = 0, max = 500, vals = { 5, 6 }, to = SMLSIZE, scale = 1 },
        -- emuboost yaw
        { x = 52, y = 36, min = 0, max = 500, vals = { 43, 44 }, to = SMLSIZE, scale = 1 },
        -- feather PID
        { x = 53, y = 46, min = 0, max = 100, vals = { 7 }, to = SMLSIZE, scale = 1 },
        -- emuboost limit
        { x = 80, y = 26, min = 0, max = 500,  vals = { 10 },     to = SMLSIZE, scale = 1 },
        -- emuboost yaw limit
        { x = 80, y = 36, min = 0, max = 500,  vals = { 45 },     to = SMLSIZE, scale = 1 },
        -- iDecay
        { x = 53, y = 56, min = 0, max = 100,  vals = { 11 },      to = SMLSIZE, scale = 1 },
        -- Throttle Boost
        { x = 53, y = 66, min = 0, max = 100,  vals = { 31 },      to = SMLSIZE, scale = 1 },
        -- NFE Racer Mode
        { x = 53, y = 76, min = 0, max = 1,  vals = { 55 },      to = SMLSIZE, table = { [0]="OFF", "ON" } },
        -- I Term Rotation
        { x = 53, y = 86, min = 0, max = 1,  vals = { 26 },      to = SMLSIZE, table = { [0]="OFF", "ON" } },
	-- SPA P
        { x = 39, y = 112,  vals = { 46 },     min = 0,    max = 100, scale = 1, to = SMLSIZE },
        { x = 39, y = 122,  vals = { 49 },    min = 0,    max = 100, scale = 1, to = SMLSIZE },
        { x = 39, y = 133,  vals = { 52 },    min = 0,    max = 100, scale = 100, to = SMLSIZE },
        -- SPA I
        { x = 66, y = 112,  vals = { 47 },     min = 0,    max = 100, scale = 1, to = SMLSIZE },
        { x = 66, y = 122,  vals = { 50 },     min = 0,    max = 100, scale = 1, to = SMLSIZE },
        { x = 66, y = 132,  vals = { 53 },     min = 0,    max = 100, scale = 1, to = SMLSIZE },
        -- SPA D
        { x = 94, y = 112,  vals = { 48 },     min = 0,    max = 100, scale = 1, to = SMLSIZE },
        { x = 94, y = 122,  vals = { 51 },    min = 0,    max = 100, scale = 1, to = SMLSIZE },
        { x = 94, y = 132,  vals = { 54 },    min = 0,    max = 100, scale = 1, to = SMLSIZE },

    },
}