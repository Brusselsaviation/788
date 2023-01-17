--[[
    Script with functions or variables that get used frequently throughout the project.

    - Matt3o0
    - BRUH {EvenAnim, bool2num}
]]

-- variables --

UOS = sasl.getOS() -- The Operation System that the user is using.
XPV = sasl.getXPVersion() -- The version of X-Plane that the user is using.
XPP = sasl.getXPlanePath() -- The path to the X-Plane installation of the user.
ACP = sasl.getAircraftPath() -- The path of the Aircraft

local f_time = globalPropertyf("sim/operation/misc/frame_rate_period")

-- functions --

-- A linear animation function.<br><br> **dref** : Dataref to animate<br> **tgt** : End goal/target of the animation<br> **step** : Number step that the animation will add until tgt<br> **spd** : Speed of the animation(lower values -> faster animation, `0.0166` is recommended)
function EvenAnim(dref, tgt, step, spd)
    if math.abs(get(dref) - tgt) <= step then
        set(dref, tgt)
    else
        set(dref, get(dref) + (bool2num(get(dref) < tgt) - bool2num(get(dref) > tgt)) * step * get(f_time) / spd)
    end
end

-- 
function bool2num(value)
    return value and 1 or 0
end
---------------

function onModuleInit()
    print("All frequently used functions and variables loaded successfully")
end

return {
    EvenAnim = EvenAnim,
    bool2num = bool2num
   }