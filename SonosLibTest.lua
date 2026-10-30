---@diagnostic disable: undefined-global
if require and not QuickApp then require("hc3emu") end

--%%name:SonosTest
-- -%%mode:proxy 
--%%var:IP="192.168.50.5"
--%%file:SonosLib.lua,SonosLib

QuickApp.preloadSonos={ip="qvar:ip",debug={socket=true}}

function QuickApp:onInit()
  self:debug("Player")
  self.sonos:say("TV Room","Hello")
end