function onCreate() 
--750
	Rings = 0
	strum = 0
	if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
	makeLuaText("Rings", Rings, 400, -70, 610)
	else
	makeLuaText("Rings", Rings, 400, -70, 60)
	end
	setTextSize("Rings", 70)
	if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
	if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
	makeAnimatedLuaSprite('Strum', 'Ring Strum', 874, 20)
	else
	makeAnimatedLuaSprite('Strum', 'Ring Strum', 555, 20)
	end
	else
	if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
	makeAnimatedLuaSprite('Strum', 'Ring Strum', 874, 540)
	else
	makeAnimatedLuaSprite('Strum', 'Ring Strum', 555, 540)
	end
	end
	addAnimationByPrefix('Strum', 'Base', 'Ring Strum Base')
	addAnimationByPrefix('Strum', 'Press', 'Ring Strum Press', 30, false)
	addAnimationByPrefix('Strum', 'Hit', 'Ring Strum Hit', 24, false)
	scaleObject('Strum', 0.7, 0.70);
	addLuaSprite('Strum', true)
	objectPlayAnimation('Strum', 'Press', true)
	setObjectCamera('Strum', 'hud')
	doTweenAlpha('StrumHide', 'Strum', 0, 0.01, 'linear')
	if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
	if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
	makeLuaSprite('Ring', 'ring', 876, 750);
	makeLuaSprite('Rung', 'ring', 876, 750);
	makeLuaSprite('Rong', 'ring', 876, 750);
	else
	makeLuaSprite('Ring', 'ring', 557, 750);
	makeLuaSprite('Rung', 'ring', 557, 750);
	makeLuaSprite('Rong', 'ring', 557, 750);
	end
	else
	if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
	makeLuaSprite('Ring', 'ring', 876, -135);
	makeLuaSprite('Rung', 'ring', 876, -135);
	makeLuaSprite('Rong', 'ring', 876, -135);
	else
	makeLuaSprite('Ring', 'ring', 557, -135);
	makeLuaSprite('Rung', 'ring', 557, -135);
	makeLuaSprite('Rong', 'ring', 557, -135);
	end
	end
	scaleObject('Ring', 0.7, 0.7);
	addLuaSprite('Ring', true)
	setObjectCamera('Ring', 'hud')
	scaleObject('Rung', 0.7, 0.7);
	addLuaSprite('Rung', true)
	setObjectCamera('Rung', 'hud')
	scaleObject('Rong', 0.7, 0.7);
	addLuaSprite('Rong', true)
	setObjectCamera('Rong', 'hud')
	if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
	makeLuaSprite('Counter', 'Counter', 10, 600);
	else
	makeLuaSprite('Counter', 'Counter', 10, 50);
	end
	scaleObject('Counter', 1.2, 1.2);
	addLuaSprite('Counter', true)
	setObjectCamera('Counter', 'hud')
	doTweenAlpha('CounterHide', 'Counter', 0, 0.01, 'linear')
	time = 3.5 / scrollSpeed
	timee = 1.25 / scrollSpeed
	timeee = 1.66 / scrollSpeed
	timeeee = 1.9 / scrollSpeed
	timeb = 3.5 / scrollSpeed
	timeeb = 1.25 / scrollSpeed
	timeeeb = 1.66 / scrollSpeed
	timeeeeb = 1.9 / scrollSpeed
	yes = 0
	hit = 0
	hip = 0
	yay = 0
	yip = 0
	no = 0
	maybe = 0
	if getProperty('cpuControlled') then
		bot = 1
	else
		bot = 0
	end
end
function onCreatePost()
	objectPlayAnimation('Strum', 'Base', true)
	notePosX = getPropertyFromGroup('playerStrums', notee, 'x');
	newnotePosX = notePosX - 55
end

function onEvent(name, value1, value2)
	if name == 'Ring' then
		if strum == 1 then
			if value1 == '' then
			if yes == 0 then
				setProperty('Ring.visible', true)
				if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
				doTweenY('Goup', 'Ring', -900, time, 'linear')
				else
				doTweenY('Goup', 'Ring', 1700, time, 'linear')
				end
				runTimer('hitfart', timee)
				runTimer('hiteat', timeee)
				runTimer('lol', timeeee)
				yes = 1
			elseif no == 0 then
				--debugPrint("no")
				setProperty('Rung.visible', true)
				if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
				doTweenY('Gou', 'Rung', -900, time, 'linear')
				else
				doTweenY('Gou', 'Rung', 1700, time, 'linear')
				end
				runTimer('hitfar', timee)
				runTimer('hitea', timeee)
				runTimer('lo', timeeee)
				--debugPrint("nop")
				no = 1
			end
			else
				time = 3.5 / value1
				timee = 1.25 / value1
				timeee = 1.66 / value1
				timeeee = 1.9 / value1
			if yes == 0 then
				setProperty('Ring.visible', true)
				if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
				doTweenY('Goup', 'Ring', -900, time, 'linear')
				else
				doTweenY('Goup', 'Ring', 1700, time, 'linear')
				end
				runTimer('hitfart', timee)
				runTimer('hiteat', timeee)
				runTimer('lol', timeeee)
				yes = 1
			elseif no == 0 then
				--debugPrint("no")
				setProperty('Rung.visible', true)
				if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
				doTweenY('Gou', 'Rung', -900, time, 'linear')
				else
				doTweenY('Gou', 'Rung', 1700, time, 'linear')
				end
				runTimer('hitfar', timee)
				runTimer('hitea', timeee)
				runTimer('lo', timeeee)
				--debugPrint("nop")
				no = 1
			end
				time = timeb + 0
				timee = timeeb + 0
				timeee = timeeeb + 0
				timeeee = timeeeeb + 0
			end
		end
	elseif name == 'Ring Strum Appear' then
		if strum == 0 then
			strum = 1
			addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
			doTweenAlpha('StrumShow', 'Strum', 1, 0.3, 'linear')
			doTweenAlpha('CounterShow', 'Counter', 1, 0.3, 'linear')
			--732 is the left note 
			--add 110 for the up note
			if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
			noteTweenX("x5", 4, 677, 0.3 ,"quartInOut");
			noteTweenX("x6", 5, 787, 0.3 ,"quartInOut");
			noteTweenX("x7", 6, 1007, 0.3 ,"quartInOut");
			noteTweenX("x8", 7, 1117, 0.3 ,"quartInOut");
			else
			noteTweenX("x5", 4, 362, 0.3 ,"quartInOut");
			noteTweenX("x6", 5, 472, 0.3 ,"quartInOut");
			noteTweenX("x7", 6, 692, 0.3 ,"quartInOut");
			noteTweenX("x8", 7, 792, 0.3 ,"quartInOut");
			end
		noteTweenAngle("r5", 4, -360, 0.3, "quartInOut");
		noteTweenAngle("r6", 5, -360, 0.3, "quartInOut");
		noteTweenAngle("r7", 6, 360, 0.3, "quartInOut");
		noteTweenAngle("r8", 7, 360, 0.3, "quartInOut");
		--triggerEvent('MoveArrow', '4', '-55, 0, -360, 1, 0.3')
		--triggerEvent('MoveArrow', '5', '-55, 0, -360, 1, 0.3')
		--triggerEvent('MoveArrow', '6', '55, 0, 360, 1, 0.3')
		--triggerEvent('MoveArrow', '7', '55, 0, 360, 1, 0.3')
		end
	elseif name == 'Ring Strum Disappear' then
		if strum == 1 then
		strum = 0
		removeLuaText('Rings', false)
		doTweenAlpha('StrumShow', 'Strum', 0, 0.3, 'linear')
		doTweenAlpha('CounterShow', 'Counter', 0, 0.3, 'linear')
		if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
		noteTweenX("x5", 4, 732, 0.3 ,"quartInOut");
		noteTweenX("x6", 5, 842, 0.3 ,"quartInOut");
		noteTweenX("x7", 6, 952, 0.3 ,"quartInOut");
                noteTweenX("x8", 7, 1062, 0.3 ,"quartInOut");
		else
		noteTweenX("x5", 4, 417, 0.3 ,"quartInOut");
		noteTweenX("x6", 5, 527, 0.3 ,"quartInOut");
		noteTweenX("x7", 6, 637, 0.3 ,"quartInOut");
                noteTweenX("x8", 7, 747, 0.3 ,"quartInOut");
		end
		noteTweenAngle("r5", 4, 360, 0.3, "quartInOut");
		noteTweenAngle("r6", 5, 360, 0.3, "quartInOut");
		noteTweenAngle("r7", 6, -360, 0.3, "quartInOut");
		noteTweenAngle("r8", 7, -360, 0.3, "quartInOut");
		--triggerEvent('MoveArrow', '4', '55, 0, 360, 1, 0.3')
		--triggerEvent('MoveArrow', '5', '55, 0, 360, 1, 0.3')
		--triggerEvent('MoveArrow', '6', '-55, 0, -360, 1, 0.3')
		--triggerEvent('MoveArrow', '7', '-55, 0, -360, 1, 0.3')
		end
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'hitfart' then
		hit = 1
		--debugPrint("AAAAA")
	elseif tag == 'hiteat' then
		hit = 0
		--debugPrint("BBBB")
	elseif tag == 'lol' then
		--debugPrint("CCC")
			--doTweenAlpha('kcuf', 'gun', 1, 0.00001, 'linear')
			--doTweenAlpha('shit', 'Ring', 0, 0.01, 'linear')
			setProperty('Ring.visible', false)
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
				doTweenY('why', 'Ring', 900, 0.9, 'linear')
				else
				doTweenY('why', 'Ring', -1700, 0.9, 'linear')
				end
			--runTimer('codingsucks', '0.1')
			yay = 0
			yes = 0
	elseif tag == 'codingsucks' then
		--debugPrint("DD")
		doTweenAlpha('shit', 'Ring', 0, 0.01, 'linear')
	elseif tag == 'assfart' then
		--debugPrint("E")
		objectPlayAnimation('Strum', 'Base', true)
	elseif tag == 'starthit' then
		hip = 1
		--debugPrint("AAAAA")
	elseif tag == 'hitende' then
		hip = 0
		--debugPrint("BBBB")
	elseif tag == 'pie' then
		--debugPrint("CCC")
			--doTweenAlpha('kcuf', 'gun', 1, 0.00001, 'linear')
			doTweenY('azzipe', 'gum', 900, 0.5, 'linear')
			runTimer('codingsuckse', '0.5')
	elseif tag == 'codingsuckse' then
		doTweenAlpha('kcufe', 'gum', 1, 0.00001, 'linear')
	
	elseif tag == 'hitfar' then
		hip = 1
		--debugPrint("AAAAA")
	elseif tag == 'hitea' then
		hip = 0
		--debugPrint("BBBB")
	elseif tag == 'lo' then
		--debugPrint("CCC")
			--doTweenAlpha('kcuf', 'gun', 1, 0.00001, 'linear')
			--doTweenAlpha('shit', 'Ring', 0, 0.01, 'linear')
			removeLuaSprite('Rung')
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
	if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
	makeLuaSprite('Rung', 'ring', 876, 750);
	else
	makeLuaSprite('Rung', 'ring', 557, 750);
	end
	else
	if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
	makeLuaSprite('Rung', 'ring', 876, -135);
	else
	makeLuaSprite('Rung', 'ring', 557, -135);
	end
	end
			scaleObject('Rung', 0.7, 0.7);
			addLuaSprite('Rung', true)
			setObjectCamera('Rung', 'hud')
			--runTimer('codingsucks', '0.1')
			ya = 0
			no = 0
	elseif tag == 'codingsucks' then
		--debugPrint("DD")
		doTweenAlpha('shit', 'Ring', 0, 0.01, 'linear')
	elseif tag == 'assfart' then
	
		objectPlayAnimation('Strum', 'Base', true)
	elseif tag == 'dothing' then
		--debugPrint("F")
		objectPlayAnimation('Strum', 'Base', true)
	elseif tag == 'starthit' then
		hip = 1
		--debugPrint("AAAAA")
	elseif tag == 'hitende' then
		hip = 0
		--debugPrint("BBBB")
	elseif tag == 'pie' then
		--debugPrint("CCC")
			--doTweenAlpha('kcuf', 'gun', 1, 0.00001, 'linear')
			doTweenY('azzipe', 'gum', 900, 0.5, 'linear')
	elseif tag == 'hold' then
		hold = 1
	end
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
end
function onUpdate(elapsed)
	if strum == 1 then
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then
	if hit == 1 then
			--debugPrint("hit1")
			characterPlayAnim('boyfriend', 'hey', true);
			playSound('Ring', 1.0);
			curHealth = getProperty('health');
			yay = 1
			addScore(10);
			setProperty('Ring.visible', false)
			objectPlayAnimation('Strum', 'Hit', true)
			removeLuaText('Rings')
			Rings = Rings + 1
	if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
	makeLuaText("Rings", Rings, 400, -70, 610)
	else
	makeLuaText("Rings", Rings, 400, -70, 60)
	end
			setTextSize("Rings", 70)
			addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
			hit = 0
	else
		if bot == 1 then
		else
		objectPlayAnimation('Strum', 'Press', true)
		end
	end
	if hip == 1 then
			--debugPrint("hit1")
			hip = 0
			characterPlayAnim('boyfriend', 'hey', true);
			playSound('Ring', 1.0);
			curHealth = getProperty('health');
			ya = 1
			addScore(10);
			removeLuaSprite('Rung')
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
	if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
	makeLuaSprite('Rung', 'ring', 876, 750);
	else
	makeLuaSprite('Rung', 'ring', 557, 750);
	end
	else
	if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
	makeLuaSprite('Rung', 'ring', 876, -135);
	else
	makeLuaSprite('Rung', 'ring', 557, -135);
	end
	end
			
			scaleObject('Rung', 0.7, 0.7);
			addLuaSprite('Rung', true)
			setObjectCamera('Rung', 'hud')
			objectPlayAnimation('Strum', 'Hit', true)
			removeLuaText('Rings')
			Rings = Rings + 1
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
			makeLuaText("Rings", Rings, 400, -70, 610)
			else
			makeLuaText("Rings", Rings, 400, -70, 60)
			end
			setTextSize("Rings", 70)
			addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
	end
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justReleased.SPACE') then
	runTimer('assfart', '0.01')
	elseif bot == 1 then
		if hit == 1 then
		runTimer('dothing', '0.1')
		--runTimer('assfart', '0.1')
			--debugPrint("hit1")
			characterPlayAnim('boyfriend', 'hey', true);
			playSound('Ring', 1.0);
			curHealth = getProperty('health');
			yay = 1
			setProperty('Ring.visible', false)
			objectPlayAnimation('Strum', 'Hit', true)
			removeLuaText('Rings')
			Rings = Rings + 1
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
			makeLuaText("Rings", Rings, 400, -70, 610)
			else
			makeLuaText("Rings", Rings, 400, -70, 60)
			end
			setTextSize("Rings", 70)
			addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
			hit = 0
			--runTimer('assfart', '0.1')
		elseif hip == 1 then
		runTimer('dothing', '0.1')
		--runTimer('assfart', '0.001')
			--debugPrint("hit1")
			hip = 0
			characterPlayAnim('boyfriend', 'hey', true);
			playSound('Ring', 1.0);
			curHealth = getProperty('health');
			ya = 1
			removeLuaSprite('Rung')
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
	if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
	makeLuaSprite('Rung', 'ring', 876, 750);
	else
	makeLuaSprite('Rung', 'ring', 557, 750);
	end
	else
	if not getPropertyFromClass('ClientPrefs', 'middleScroll', true) then
	makeLuaSprite('Rung', 'ring', 876, -135);
	else
	makeLuaSprite('Rung', 'ring', 557, -135);
	end
	end
			scaleObject('Rung', 0.7, 0.7);
			addLuaSprite('Rung', true)
			setObjectCamera('Rung', 'hud')
			objectPlayAnimation('Strum', 'Hit', true)
			removeLuaText('Rings')
			Rings = Rings + 1
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
			makeLuaText("Rings", Rings, 400, -70, 610)
			else
			makeLuaText("Rings", Rings, 400, -70, 60)
			end
			setTextSize("Rings", 70)
			addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
			--runTimer('assfart', '0.1')
		end
	end
	--runTimer('assfart', '0.1')
	end
end
--[[function onTweenCompleted(tag)
	if tag == 'pizza' then
		debugPrint("CCC")
		if yay == 0 then
			characterPlayAnim('boyfriend', 'hurt', true);
			setProperty('health', curHealth - 1.5525);
			playSound('GunDeath', 1.0);
		else
			doTweenAlpha('kcuf', 'gun', 1, 0, 'linear')
			doTweenY('azzip', 'gun', 900, 0, 'linear')
			yay = 0
			yes = 0
		end
	end
end--]]
-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false

--[[function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'TGT Bullet' then
		-- put something here if you want
		if noteData == 0 then
			if
				removeLuaText('Rings')
				Rings = Rings + 1
				if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
					makeLuaText("Rings", Rings, 400, -70, 610)
				else
					makeLuaText("Rings", Rings, 400, -70, 60)
				end
				setTextSize("Rings", 70)
				addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
		else
			removeLuaText('Rings')
			Rings = Rings + 1
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
				makeLuaText("Rings", Rings, 400, -70, 610)
			else
				makeLuaText("Rings", Rings, 400, -70, 60)
			end
			setTextSize("Rings", 70)
			addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
		end
	end
end--]]

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Ring' then
		-- put something here if you want
		if isSustainNote == true then
			if hold == 0 then	
				characterPlayAnim('boyfriend', 'hey', true);
				playSound('Ring', 1.0);
				removeLuaText('Rings')
				Rings = Rings + 1
				if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
					makeLuaText("Rings", Rings, 400, -70, 610)
				else
					makeLuaText("Rings", Rings, 400, -70, 60)
				end
				setTextSize("Rings", 70)
				addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
				runTimer('hold', '0.1')
				hold = 1
			else
				runTimer('hold', '0.1')
				hold = 1
			end
		else
			removeLuaText('Rings')
			Rings = Rings + 1
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
				makeLuaText("Rings", Rings, 400, -70, 610)
			else
				makeLuaText("Rings", Rings, 400, -70, 60)
			end
			setTextSize("Rings", 70)
			addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
			characterPlayAnim('boyfriend', 'hey', true);
			playSound('Ring', 1.0);
		end
		curHealth = getProperty('health');
		setProperty('health', curHealth - 0.023);	
	end
	if noteType == 'Hurt Note' then --0.3 damage???
		--[[curHealth = getProperty('health');
		setProperty('health', curHealth + 10.3);--]]
		if strum == 1 then
			curHealth = getProperty('health');
			if Rings > 0 then
			Rings = Rings - 1
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
			makeLuaText("Rings", Rings, 400, -70, 610)
			else
			makeLuaText("Rings", Rings, 400, -70, 60)
			end
			setTextSize("Rings", 70)
			addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
			setProperty('health', curHealth + 0.3);
			end
		end
		--why it no work
	end
end
-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
		-- put something here if you want
	if strum == 1 then
		if noteType == 'Ring' then
		elseif noteType == 'Hurt Note' then
		elseif noteType == '!!HURT NOTE' then
		elseif noteType == 'Drug Note' then
		elseif noteType == 'Smile Note' then
		else
		curHealth = getProperty('health');
		if Rings > 0 then
			Rings = Rings - 1
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
			makeLuaText("Rings", Rings, 400, -70, 610)
			else
			makeLuaText("Rings", Rings, 400, -70, 60)
			end
			setTextSize("Rings", 70)
			addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
			setProperty('health', curHealth + 0.0475);
		end
		end
	end
end

function noteMissPress(direction)
		-- put something here if you want
	if strum == 1 then
		curHealth = getProperty('health');
		if Rings > 0 then
			Rings = Rings - 1
			if not getPropertyFromClass('ClientPrefs', 'downScroll', true) then
			makeLuaText("Rings", Rings, 400, -70, 610)
			else
			makeLuaText("Rings", Rings, 400, -70, 60)
			end
			setTextSize("Rings", 70)
			addLuaText("Rings")   setTextColor("Rings", '0xffcc33') setTextBorder('Rings', 5, '0xcb6400')
			setProperty('health', curHealth + 0.0475);
		end
	end
end