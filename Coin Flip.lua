local dlg = Dialog("Coin Flip")

function Flip()
    local sidenum = math.random(1, 2)
    if sidenum == 1 then
        side = "Heads"
    else
        side = "Tails"
    end
    app.alert{ title="Result", text="You flipped and got " .. side .. "!"}
end
function CoinInfo()
    app.alert{ title="Info", text="Coin Flip version 1.2 by MrEnder", buttons={"Ok"}}
end

dlg
  :button{text="Flip",onclick=function() Flip() end}
  :button{text="Info",onclick=function() CoinInfo() end}
  :show{wait=false}
