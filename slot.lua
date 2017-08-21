local component = require("component")
local sides = require("sides")
 
local slot = 1
local items={}
for slot=1,27 do
local item = component.inventory_controller.getStackInSlot(1, slot)

 
if item then
  print("Item label: ", item.label)
  print("Item count: ", item.size)
  print("Item name: ", item.name)
items[slot]=item.label
else
  print("Slot " .. slot .. " is empty")
  os.sleep(1)
  end
end


for i=1,#items do
print(items[i])
end