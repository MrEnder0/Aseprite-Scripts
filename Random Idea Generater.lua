objects = {"rubber duck", "hanger", "plate", "tree", "cup", "credit card", "perfume", "floor", "glow stick", "cd", "flag", "blanket", "zipper", "camera", "paper", "soda can", "pants", "glass", "slipper", "hair tie", "packing peanuts", "drill press", "deorderant", "desk", "fridge", "shoes", "bed", "rusty nail", "key chain", "twister", "blouse", "greeting card", "chair", "water bottle", "video game", "teddie bear", "hair brush", "pillow", "white out", "rug", "mouse pad", "stop sign", "vase", "bottle", "chocolate", "playing card", "thread", "needle", "newspaper", "charger"}
adjectives = {"nosy", "gigantic", "quixotic", "feigned", "loud", "milky", "defective", "eager", "civil", "familiar", "few", "wet", "well-off", "muddled", "vagabond", "dependent", "happy", "pathetic", "cloudy", "high-pitched", "salty", "abortive", "stereotyped", "juvenile", "various", "tan", "ahead", "truthful", "anxious", "flippant", "waggish", "enormous", "deranged", "nauseating", "piquant", "black-and-white", "attractive", "voiceless", "encouraging", "neat", "distrubed", "acrid", "violent", "agreeable", "worthless", "infamous", "unruly", "vengeful", "jazzy", "sloppy"}
local dlg = Dialog("Idea Generater")

function Generate()
    app.alert{ title="Result", text=adjectives[math.random(1, #adjectives)] .. " " .. objects[math.random(1, #objects)], buttons={"Ok"}}
end
function GeneraterInfo()
    app.alert{ title="Info", text="Random Idea Generater version 1.1 by MrEnder", buttons={"Ok"}}
end

dlg
  :button{text="Generate",onclick=function() Generate() end}
  :button{text="Info",onclick=function() GeneraterInfo() end}
  :show{wait=false}
