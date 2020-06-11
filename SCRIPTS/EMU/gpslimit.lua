
return {
    read              = 256, -- MSP_ALTI_LIMIT
    write             = 257, -- MSP_SET_ALTI_LIMIT
    reboot            = true,
    eepromWrite       = true,
    title             = "ALT Limit",
    minBytes             = 9,
    text= {
        { t = "Act Alt Limit", x = 2, y = 14, to = SMLSIZE },
        { t = "Alt Limit", x = 10, y = 24, to = SMLSIZE },
        { t = "m", x = 62, y = 24, to = SMLSIZE },

        { t = "Alt Cut Off", x = 10, y = 34, to = SMLSIZE },
        { t = "m", x = 62, y = 34, to = SMLSIZE },

    },
	fields = {
        { x = 42, y = 14, vals = { 1 }, min = 0, max = 1, to = SMLSIZE, table = { [0] = "OFF", "ON" }, },
        { x = 42, y = 24, vals = { 2, 3 }, min = 1, max = 4000, to = SMLSIZE, },
        { x = 42, y = 34, vals = { 4, 5 }, min = 1, max = 4000, to = SMLSIZE, },
    },
}