-- TOOLS --
--[[
    Script with functions or variables that get used frequently throughout the project.

    Put `require 'tools'` if in need of one of the functions. This is not needed for variables

    - Matt3o0 
    - BRUH (provided functions: {EvenAnim, bool2num})
]]

f_time = globalPropertyf("sim/operation/misc/frame_rate_period")

function EvenAnim(dref, tgt, step, spd)
    if math.abs(get(dref) - tgt) <= step then
        set(dref, tgt)
    else
        set(dref, get(dref) + (bool2num(get(dref) < tgt) - bool2num(get(dref) > tgt)) * step * get(f_time) / spd)
    end
end

function bool2num(value)
    return value and 1 or 0
end


function onModuleInit()
    print("All frequently used functions and variables loaded successfully")
end

return {
    EvenAnim = EvenAnim,
    bool2num = bool2num
   }