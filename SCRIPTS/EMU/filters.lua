
return {
    read              = 92, -- MSP_FILTER_CONFIG
    write             = 93, -- MSP_SET_FILTER_CONFIG
    title             = "Filters",
    eepromWrite       = true,
    reboot            = false,
    minBytes          = 37,
    outputBytes       = 37,
    yMinLimit      = 11,
    yMaxLimit      = 52,
    text= {
        { t = "Matrix Filter",   x = 2,  y = 12,  to = SMLSIZE },
        { t = "Notch Q",               x = 12, y = 20,  to = SMLSIZE },
        { t = "Notch Min",               x = 12, y = 28,  to = SMLSIZE },
        { t = "Gyro Lowpass ",           x = 2,  y = 36,  to = SMLSIZE },
        { t = "Gyro Lowpass 1",           x = 12,  y = 44,  to = SMLSIZE },
        { t = "Filter Type",              x = 12, y = 52,  to = SMLSIZE },
        { t = "Roll",                   x = 12, y = 60,  to = SMLSIZE },
        { t = "Pitch",                   x = 12, y = 68,  to = SMLSIZE },
        { t = "Yaw",                   x = 12, y = 76,  to = SMLSIZE },
        { t = "Gyro Lowpass 2",           x = 12,  y = 84,  to = SMLSIZE },
        { t = "Filter Type",              x = 12, y = 92,  to = SMLSIZE },
        { t = "Roll",                   x = 12, y = 100,  to = SMLSIZE },
        { t = "Pitch",                   x = 12, y = 108,  to = SMLSIZE },
        { t = "Yaw",                   x = 12, y = 116,  to = SMLSIZE },
        { t = "Gyro Notch ",           x = 2,  y = 124,  to = SMLSIZE },
        { t = "Gyro Notch 1",             x = 12,  y = 132,  to = SMLSIZE },
        { t = "Center",                   x = 12, y = 140, to = SMLSIZE },
        { t = "Cutoff",                   x = 12, y = 148, to = SMLSIZE },
        { t = "Gyro Notch 2",             x = 12,  y = 156, to = SMLSIZE },
        { t = "Center",                   x = 12, y = 164, to = SMLSIZE },
        { t = "Cutoff",                   x = 12, y = 172, to = SMLSIZE },
        { t = "D Term ",           x = 2,  y = 180,  to = SMLSIZE },
        { t = "D Term Lowpass 1", 	x = 12,  y = 188, to = SMLSIZE },
        { t = "Filter Type",              x = 12, y = 196,  to = SMLSIZE },
        { t = "Roll",                   x = 12, y = 202,  to = SMLSIZE },
        { t = "Pitch",                   x = 12, y = 210,  to = SMLSIZE },
        { t = "Yaw",                   x = 12, y = 218,  to = SMLSIZE },
        { t = "D Term Lowpass 2",         x = 12,  y = 226, to = SMLSIZE },
        { t = "Roll",                   x = 12, y = 234,  to = SMLSIZE },
        { t = "Pitch",                   x = 12, y = 242,  to = SMLSIZE },
        { t = "Yaw",                   x = 12, y = 250,  to = SMLSIZE },
        { t = "Smart DTerm",        	 x = 2,  y = 256, to = SMLSIZE },
        { t = "Roll",                   x = 12, y = 264,  to = SMLSIZE },
        { t = "Pitch",                   x = 12, y = 272,  to = SMLSIZE },
        { t = "Yaw",                   x = 12, y = 280,  to = SMLSIZE },
        { t = "Witchcraft",             x = 2,  y = 288, to = SMLSIZE },
        { t = "Roll",                   x = 12, y = 306,  to = SMLSIZE },
        { t = "Pitch",                   x = 12, y = 314,  to = SMLSIZE },
        { t = "Yaw",                   x = 12, y = 322,  to = SMLSIZE },

    },
    fields = {
        -- Matrix Filter
        { x = 87, y = 20, min = 0, max = 1000,   to = SMLSIZE, vals = { 44, 45 } },
        { x = 87, y = 28, min = 0, max = 1000,   to = SMLSIZE, vals = { 46, 47 } },
        -- Gyro Lowpass 1
        { x = 87, y = 52, min = 0, max = 1,      to = SMLSIZE, vals = { 30 }, table = { [0] = "PT1", [1] = "BIQUAD" } },
        { x = 87, y = 60, min = 0, max = 16000,  to = SMLSIZE, vals = { 18, 19 } },
        { x = 87, y = 68, min = 0, max = 16000,  to = SMLSIZE, vals = { 20, 21 } },
        { x = 87, y = 76, min = 0, max = 16000,  to = SMLSIZE, vals = { 22, 23 } },
        -- Gyro Lowpass 2
        { x = 87, y = 92, min = 0, max = 1,      to = SMLSIZE, vals = { 31 }, table = { [0] = "PT1", [1] = "BIQUAD" } },
        { x = 87, y = 100, min = 0, max = 16000,  to = SMLSIZE, vals = { 24, 25 } },
        { x = 87, y = 108, min = 0, max = 16000,  to = SMLSIZE, vals = { 26, 27 } },
        { x = 87, y = 116, min = 0, max = 16000,  to = SMLSIZE, vals = { 28, 29 } },
        -- Gyro Notch 1
        { x = 87, y = 140, min = 0, max = 16000, to = SMLSIZE, vals = { 7, 8 } },
        { x = 87, y = 148, min = 0, max = 16000, to = SMLSIZE, vals = { 9, 10 } },
        -- Gyro Notch 2
        { x = 87, y = 164, min = 0, max = 16000, to = SMLSIZE, vals = { 11, 12 } },
        { x = 87, y = 172, min = 0, max = 16000, to = SMLSIZE, vals = { 13, 14 } },
        -- D Term Lowpass 1
        { x = 87, y = 196, min = 0, max = 1,     to = SMLSIZE, vals = { 15 }, table = { [0] = "PT1", [1] = "BIQUAD" } },
        { x = 87, y = 202, min = 0, max = 1000,  to = SMLSIZE, vals = { 1, 2 } },
        { x = 87, y = 210, min = 0, max = 1000,  to = SMLSIZE, vals = { 3, 4 } },
        { x = 87, y = 218, min = 0, max = 1000,  to = SMLSIZE, vals = { 5, 6 } },
        -- D Term Lowpass 2
        { x = 87, y = 234, min = 0, max = 1000,  to = SMLSIZE, vals = { 32, 33 } },
        { x = 87, y = 242, min = 0, max = 1000,  to = SMLSIZE, vals = { 34, 35 } },
        { x = 87, y = 250, min = 0, max = 1000,  to = SMLSIZE, vals = { 36, 37 } },
        -- Smart DTerm
        { x = 87, y = 264, min = 0, max = 1000,  to = SMLSIZE, vals = { 38 } },
        { x = 87, y = 272, min = 0, max = 1000,  to = SMLSIZE, vals = { 39 } },
        { x = 87, y = 280, min = 0, max = 1000,  to = SMLSIZE, vals = { 40 } },
        -- Witchcraft
        { x = 87, y = 306, min = 0, max = 1000,  to = SMLSIZE, vals = { 41 } },
        { x = 87, y = 314, min = 0, max = 1000,  to = SMLSIZE, vals = { 42 } },
        { x = 87, y = 322, min = 0, max = 1000,  to = SMLSIZE, vals = { 43 } },

    },
}