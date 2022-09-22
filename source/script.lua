LocuraFullRefunds = {}
LocuraFullRefunds.metadata = {
	title = "Locura Full Refunds",
	author = "Credence",
	version = "1.0",
}
function LocuraFullRefunds:loadMap(name)
	print("--- loading " .. LocuraFullRefunds.metadata.title .. " v" .. LocuraFullRefunds.metadata.version .. " (by " .. LocuraFullRefunds.metadata.author .. ") ---")	
    Placeable.getSellPrice = Utils.overwrittenFunction(Placeable.getSellPrice, Placeable.getSellPrice)
end
function Placeable:getSellPrice()
    return self.price
end
addModEventListener(LocuraFullRefunds)