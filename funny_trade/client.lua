local term = require("term")
local component = require("component")
local event = require("event")
local rs = component.redstone
local modem = component.modem
local address = "5a19947a-f668-424b-9079-6f7f98f421eb" -- Replace this with the modem address of the server 
local delay = 5
local port = 12
 
term.clear()
print("Enter the password")
input = io.read()
 
modem.open(port)
modem.broadcast(port, input)
 
local _,_,mac,_,_,pull = event.pull(delay, "modem")
 
function door(incAddress, message)
if incAddress == address then
if message == "true" then
rs.setOutput(5, 15) -- this is sending a signal to the left change the number for the side you need
os.sleep(delay)
rs.setOutput(5, 0)
 
elseif message == "false" then
print ("Incorrect")
os.sleep(2)
os.execute("/home/bin/door.lua")
end
end
end
 
 
 
door(mac,pull)
