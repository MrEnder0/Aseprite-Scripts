local m=0
local n=1

while(n == 1)
do
    local result = app.alert{ title="Clicker Game", text="You have " .. m .. " clicks!", buttons={"Click", "Info", "Exit"}}
    if result == 1 then
        m=m+1
    elseif result == 2 then
        app.alert{ title="Info", text="Clicker version 1.1 by MrEnder", buttons={"Ok"} }
    else
        n=0
    end
end
