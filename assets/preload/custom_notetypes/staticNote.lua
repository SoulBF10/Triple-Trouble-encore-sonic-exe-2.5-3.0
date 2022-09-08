function onCreate()
	--Iterate over all notes
	makeAnimatedLuaSprite('glitchload','hitStatic',-650,-350)
	addAnimationByPrefix('glitchload','staticanim','staticANIMATION',24,true)
	objectPlayAnimation('glitchload','staticanim',false)
	setScrollFactor('glitchload', 0, 0);
	scaleObject('glitchload', 3, 3);
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'staticNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'staticNotes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.35'); --Default value is: health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Instakill Note' then
		-- put something here if you want
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'staticNote' then
		playSound('hitStatic',1)
		runTimer('glitchhide',0.4);
		addLuaSprite('glitchload', true);
		objectPlayAnimation('glitchload','staticanim',true)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'glitchhide' then
		removeLuaSprite('glitchload', false);
    end
end