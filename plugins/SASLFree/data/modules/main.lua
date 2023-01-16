-- MAIN --
--[[
    Script that initialises every component and more necessary stuff.

    - Matt3o0
]]
size = {2048, 2048}
panel2d = false
panel3d = true
panelWidth3d = 2048
panelHeight3d = 2048

function onModuleInit()
    print("User is using" + sasl.getXPVersion() + "located at" + sasl.getXPlanePath() "on" + sasl.getOS())
end

components = {
    tools {}
}
