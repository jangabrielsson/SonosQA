---@diagnostic disable: undefined-global
if require and not QuickApp then require("hc3emu") end

--%%name=SonosTest
--%%proxy=S1Proxy
--%%var=ip:"192.168.1.6"
--%%file=SonosLib.lua:SonosLib


if fibaro.hc3emu then
  fibaro.hc3emu.require("hc3emu.colors")(fibaro) -- We can load extra colors working in vscode, don't work in zbs
end

QuickApp.preloadSonos={ip="qvar:ip",debug={socket=true}}

function QuickApp:onInit()
  self:debug("Player")
  self.sonos:say("TV Room","Hello")
end