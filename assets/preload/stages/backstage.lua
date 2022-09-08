function onCreate()
	--background boi
	makeLuaSprite('stage', 'back/tails', -500, -100)
	setLuaSpriteScrollFactor('stage', 1, 1)
 	scaleObject('stage',1.5,1.5)
	addLuaSprite('stage', false)

	makeLuaSprite( 'stage2', 'back/tailsexe', -300, -100)
	setLuaSpriteScrollFactor('stage2', 1, 1)
 	scaleObject('stage2', 1, 1)
	addLuaSprite('stage2', false)

	makeLuaSprite( 'stage3', 'back/xeno', -1400, -600)
	setLuaSpriteScrollFactor('stage3', 1, 1)
 	scaleObject('stage3', 2, 1.5)
	addLuaSprite('stage3', false)

	makeLuaSprite( 'stage4', 'back/fleet', -900, -500)
	setLuaSpriteScrollFactor('stage4', 1, 1)
 	scaleObject('stage4', 2, 1.5)
	addLuaSprite('stage4', false)

	makeLuaSprite( 'stage5', 'back/egg', -900, -650)
	setLuaSpriteScrollFactor('stage5', 1, 1)
 	scaleObject('stage5', 1.5, 1.5)
	addLuaSprite('stage5', false)

	makeLuaSprite( 'stage6', 'back/metal', -900, -650)
	setLuaSpriteScrollFactor('stage6', 1, 1)
 	scaleObject('stage6', 1.5, 1.5)
	addLuaSprite('stage6', false)

	setProperty('stage2.visible', false)
	setProperty('stage3.visible', false)
	setProperty('stage4.visible', false)
	setProperty('stage5.visible', false)
	setProperty('stage6.visible', false);
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('stage.visible', false);
			setProperty('stage2.visible', true);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false);
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', false);
		end

		if value1 == '3' then
			setProperty('stage3.visible', true);
			setProperty('stage.visible', false);
			setProperty('stage2.visible', false);
			setProperty('stage4.visible', false);
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', false);
		end

		if value1 == '4' then
			setProperty('stage2.visible', false);
			setProperty('stage.visible', false);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', true)
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', false);
		end

		if value1 == '5' then
			setProperty('stage2.visible', false);
			setProperty('stage.visible', false);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false)
			setProperty('stage5.visible', true);
			setProperty('stage6.visible', false);
		end
		
		if value1 == '6' then
			setProperty('stage2.visible', false);
			setProperty('stage.visible', false);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false)
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', true);
		end

		if value1 == '1' then
			setProperty('stage2.visible', false);
			setProperty('stage.visible', true);
			setProperty('stage3.visible', false);
			setProperty('stage4.visible', false);
			setProperty('stage5.visible', false);
			setProperty('stage6.visible', false);
		end
	end
end