AddComponentPostInit("inventory", function(Inventory, inst)
	function Inventory:DontDropAmulet()
		for k, v in pairs(self.equipslots) do
			if v and v.prefab ~= "purpleamulet" then
				self:DropItem(v)
			end
		end
		for k, v in pairs(self.itemslots) do
			if v and v.prefab ~= "purpleamulet" then
				self:DropItem(v)
			end
		end
	end

	function Inventory:DropEverything(ondeath, keepequip)
		if inst:HasTag("player") then
			return Inventory:DontDropAmulet(ondeath, keepequip)
		end
	end
end)

