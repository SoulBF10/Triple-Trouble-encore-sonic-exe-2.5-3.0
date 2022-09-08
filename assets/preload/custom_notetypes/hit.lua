function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'hit' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'hit');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0.1');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
           precacheImage('sonic.exe'); 
end


function onUpdate()

  if getProperty('sonic.animation.curAnim.finished') then
    
    removeLuaSprite('sonic');

    end
end
    

function goodNoteHit(id, direction, noteType, isSustainNote)
      if noteType == 'hit' then
	makeAnimatedLuaSprite('sonic','sonic.exe',0,0)
	addAnimationByPrefix('sonic','jump','sonicSPOOK',20,false)
	objectPlayAnimation('sonic','jump',false)
    setObjectCamera('sonic','other')

         addLuaSprite('sonic', true);
        playSound('jump')
end
end