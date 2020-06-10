local i = 1

local function compile()
    local script = assert(loadScript("COMPILE/scripts.lua"))(i)
    collectgarbage()
    i = i + 1
    if script then
        lcd.clear()
        lcd.drawText(2, 2, "Compiling...", SMLSIZE)
        lcd.drawText(2, 22, script, SMLSIZE)
        lcd.drawText(4, 44, "READY TO BURN THE SKY", SMLSIZE)
        lcd.drawText(40, 50, "LIKE BRUMLY FPV ?", SMLSIZE)
        assert(loadScript(script, c))
        collectgarbage()
        return 0
    end
    local file = io.open("COMPILE/scripts_compiled.lua", 'w')
    io.write(file, "return true")
    io.close(file)
    assert(loadScript("COMPILE/scripts_compiled.lua", 'c'))
    return 1
end

return compile
