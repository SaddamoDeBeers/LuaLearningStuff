mouseWidth = 0
mouseHeight = 0

local printer = peripheral.wrap("left")
monitor = peripheral.wrap("top")
ticket = peripheral.wrap("bottom")
monitor.clear()
monitor.setCursorPos(1, 1)
w, h=monitor.getSize()

monitor.setBackgroundColor((colors.black))
monitor.setCursorPos(2, 2)
monitor.setTextColor(colors.white)
monitor.write("    Saddamo Base      ")
monitor.setCursorPos(2, 4)
monitor.setTextColor(colors.white)
monitor.write("      Nyghter      ")
monitor.setBackgroundColor(colours.white)

while true do

function checkClickPosition()

 if mouseWidth > 1 and mouseWidth < 22 and mouseHeight == 2 then
  ticket.printTicket(1,1)
        sleep(3) 
        
 elseif mouseWidth > 1 and mouseWidth < 8 and mouseHeight == 4 then
  ticket.printTicket(2,1)
 end

end

repeat 
event ,p1,p2,p3 = os.pullEvent()
 if event=="monitor_touch" then
   mouseWidth = p2
   mouseHeight = p3
   checkClickPosition()
          
 end
      
until event=="char" and p1==("x")
    
    end
