local dlg = Dialog("Nuke")

function Nuke()
  local result = app.alert{ title="Nuke Warning", text="Are you sure you want to nuke " .. m .. " actions?", buttons={"Yes", "No"}}
  if result == 1 then
    n = 0
    while(n < m)
    do
      app.command.Undo()
      n = n+1
    end
  end
end
function MoreInfo()
  app.alert{ title="Info", text="Nuke version 1.3 by MrEnder", buttons={"Ok"}}
end

dlg
  :button{text="all",onclick=function() m = 9999 Nuke() end}
  :button{text="250",onclick=function() m = 250 Nuke() end}
  :button{text="100",onclick=function() m = 100 Nuke() end}
  :button{text="50",onclick=function() m = 50 Nuke() end}
  :button{text="10",onclick=function() m = 10 Nuke() end}
  :button{text="More Info",onclick=function() MoreInfo() end}
  :show{wait=false}
