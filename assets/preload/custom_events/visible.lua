function onEvent(name, character1name, character2name)
	if name == "visible" then
		setPropertyLuaSprite(character1name, 'alpha', 1)
	end
end