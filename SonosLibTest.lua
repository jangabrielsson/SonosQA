---@diagnostic disable: undefined-global
--%%name:SonosTest
--%% proxy:Strue
--%%var:ip="192.168.1.5"
--%%file:SonosLib.lua:SonosLib

function Sonos:eventHandler(event)
  print(event) -- Just print out events, could be used to ex. update UI
end

function QuickApp:onInit()
   Sonos("192.168.1.5",function(sonos) -- Wait for SSnos to be setup
      self:debug("Sonos Ready")
   end)
end

-- Alt. hijack :onInit with QuickApp.preloadSonos

-- QuickApp.preloadSonos={ip="qvar:ip",debug={socket=true}}

-- function Sonos:eventHandler(event)
--   print(event) -- Just print out events, could be used to ex. update UI
-- end

-- function QuickApp:onInit()
--   self:debug("Player")
-- end