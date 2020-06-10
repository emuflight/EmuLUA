lcdResolution =
{
    low = 0,
    high = 1
}

local supportedPlatforms = {
    x7 =
    {
        templateHome    = SCRIPT_HOME.."/",
        preLoad         = SCRIPT_HOME.."/x7pre.lua",
        resolution      = lcdResolution.low
    },
    x9 =
    {
        templateHome    = SCRIPT_HOME.."/",
        preLoad         = SCRIPT_HOME.."/x9pre.lua",
        resolution      = lcdResolution.low
    },
    horus =
    {
        templateHome    = SCRIPT_HOME.."/",
        preLoad         = SCRIPT_HOME.."/horuspre.lua",
        resolution      = lcdResolution.high
    },
    nv14 =
    {
        templateHome    = SCRIPT_HOME.."/",
        preLoad         = SCRIPT_HOME.."/nv14pre.lua",
        resolution      = lcdResolution.high
    },
    tango =
    {
        templateHome    = SCRIPT_HOME.."/",
        preLoad         = SCRIPT_HOME.."/tangopre.lua",
        resolution      = lcdResolution.low
    },
}

local supportedRadios =
{
    ["128x64"]  = supportedPlatforms.x7,
    ["128x96"]  = supportedPlatforms.tango,
    ["212x64"]  = supportedPlatforms.x9,
    ["480x272"] = supportedPlatforms.horus,
    ["320x480"] = supportedPlatforms.nv14,
}

local ver, rad, maj, min, rev = getVersion()
local radio = supportedRadios[tostring(LCD_W) .. "x" .. tostring(LCD_H)]

if not radio then
    error("Radio not supported: "..rad)
end

return radio
