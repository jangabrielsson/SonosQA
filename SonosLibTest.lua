--%%name:SonosTest
--%%var:IP="192.168.50.5"
--%%file:SonosLib.lua,SonosLib

function Sonos:eventHandler(event)
  print(event) -- Just print out events, could be used to ex. update UI
end

function QuickApp:onInit()
   Sonos(self:getVariable("IP"),function(sonos) -- Wait for Sonos to be setup
      self:debug("Sonos Ready")
   end)
end

-- Alt. hijack :onInit with QuickApp.preloadSonos

-- QuickApp.preloadSonos={ip="qvar:IP",debug={socket=true}}

-- function Sonos:eventHandler(event)
--   print(event) -- Just print out events, could be used to ex. update UI
-- end

-- function QuickApp:onInit()
--   self:debug("Player")
-- end
