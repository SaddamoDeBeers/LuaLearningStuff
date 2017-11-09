local comp = require("component")
local event = require("event")
local modem = comp.modem
local password = "1234" -- enter your password here
local address = "808a21c4-bd62-47c0-b137-15adc2fbf0a5" -- replace with the modem address of your client
local port = 12
 
modem.open(port)
local _,_,mac,_,_,pull = event.pull("modem")
 
function door(incAddress,message)
 
if incAddress == address then
 
if message == password then
modem.send(address, port, "true")
modem.close(port)
os.sleep(5)
os.execute("/home/bin/door.lua")
 
else
modem.send(address, port, "false")
modem.close(port)
os.sleep(5)
os.execute("/home/bin/door.lua")
 
end
 
end
 
end
 
door(mac, pull)
