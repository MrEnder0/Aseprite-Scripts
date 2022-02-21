local dlg = Dialog("Nuke")

function Nuke()
  local result = app.alert{ title="Nuke", text="Are you sure you want to nuke " .. m .. " actions?", buttons={"Yes", "No"}}
  if result == 1 then
    n = 0
    while(n < m)
    do
      app.command.Undo()
      n = n+1
    end
  end
end
function NukeInfo()
  app.alert{ title="Info", text="Nuke version 1.2 by MrEnder", buttons={"Ok"}}
end

dlg
  :button{text="250",onclick=function() m = 250 Nuke() end}
  :button{text="100",onclick=function() m = 100 Nuke() end}
  :button{text="50",onclick=function() m = 50 Nuke() end}
  :button{text="10",onclick=function() m = 10 Nuke() end}
  :button{text="Info",onclick=function() m = 10 NukeInfo() end}
  :show{wait=false}