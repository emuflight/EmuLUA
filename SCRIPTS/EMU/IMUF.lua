
return {
    read           = 227, -- MSP_IMUF_CONFIG
    write          = 228, -- MSP_SET_IMUF_CONFIG
    title          = "IMU-F.",
    reboot         = false,
    eepromWrite    = true,
    yMinLimit      = 11,
    yMaxLimit      = 52,
    minBytes          = 9,
    text = {
        { t = "IMU-F Q",      x = 2,  y = 12,  to = SMLSIZE },
        { t = "Roll Q",       x = 12, y = 20,  to = SMLSIZE },
        { t = "Pitch Q",       x = 12, y = 28,  to = SMLSIZE },
        { t = "Yaw Q",       x = 12, y = 36,  to = SMLSIZE },
        { t = "IMU-F W",       x = 2, y = 44,  to = SMLSIZE },
        { t = "IMU-F SHARPNESS",       x = 2, y = 52,  to = SMLSIZE },
    },
    fields = {
        { x = 87, y = 20,  to=SMLSIZE, min = 0,   max = 16000,    vals = { 3, 4 } },
        { x = 87, y = 28,  to=SMLSIZE, min = 0,    max = 160000,   vals = { 5, 6 } },
        { x = 87, y = 36,  to=SMLSIZE, min = 0,    max = 160000,    vals = { 7, 8 } },
        { x = 87, y = 44,  to=SMLSIZE, min = 0,    max = 256,     vals = { 9, 10 } },
        { x = 87, y = 52,  to=SMLSIZE, min = 0,    max = 160000,     vals = { 11, 12 } },
    },
}
