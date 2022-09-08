function onCreate()

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'scare' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'scare');


			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end

	makeAnimatedLuaSprite('sonic','sonic.exe',0,0)
	addAnimationByPrefix('sonic','jump','sonicSPOOK',20,false)
	objectPlayAnimation('sonic','jump',false)
    setObjectCamera('sonic','hud')
end

function onUpdate()
    if getProperty('sonic.animation.curAnim.finished') then
        removeLuaSprite('sonic',true)
    end
end
    

function noteMiss(id, direction, noteType, isSustainNote)

      if noteType == 'scare' then

        playSound('jump')
		addLuaSprite('sonic', true);
end
end