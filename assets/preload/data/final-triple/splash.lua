function spawnCustomSplash(id, noteData, noteType, isSustainNote)
	splashCount = splashCount + 1;
    if noteType == '' or noteType == 'GF Sing' then
		if noteData == 0 then
			splashThing = 'note splash purple 1';
		elseif noteData == 1 then
			splashThing = 'note splash blue 1';
		elseif noteData == 2 then
			splashThing = 'note splash green 1';
		else
			splashThing = 'note splash red 1';
		end
	end
	if noteType == '' or noteType == 'GF Sing' then
		makeAnimatedLuaSprite('noteSplash' .. splashCount, texture, getPropertyFromGroup('playerStrums', noteData, 'x'), getPropertyFromGroup('playerStrums', noteData, 'y'));
	end
	addAnimationByPrefix('noteSplash' .. splashCount, 'anim', splashThing, 24, false);
	addLuaSprite('noteSplash' .. splashCount);
	
	setProperty('noteSplash' .. splashCount .. '.offset.x', 70);
	setProperty('noteSplash' .. splashCount .. '.offset.y', 15);

	setObjectCamera('noteSplash' .. splashCount, 'hud');
	setObjectOrder('noteSplash' .. splashCount, 9999);
	setObjectOrder('timeBarBG', 99999);
	setObjectOrder('timeBar', 999999);
	setObjectOrder('timeTxt', 9999999);
end