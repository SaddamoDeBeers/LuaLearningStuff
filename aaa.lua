local component = require("component") 
local term = require("term")
local gpu = component.gpu
local sides = require("sides")
local colors = require("colors")
local redstone = component.redstone 



while true do


  term.clear()  
  term.setCursor(1,1)

  print("Bundled Cable display V1.0")

  whiteCableTop = redstone.getBundledInput(sides.top, colors.white)  

  gpu.set(1,5, "White cable is:")
  
  term.setCursor(25,5)
    
  if whiteCableTop > 0 then
    print("on")
    else    
    print("off")
    end

  os.sleep(1)
  end
  