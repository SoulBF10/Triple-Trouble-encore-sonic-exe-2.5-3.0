poison = false;
drain = 0.003;
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'PhantomNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PhantomNote'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
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
	if noteType == 'PhantomNote' then
		drain=drain+0.0006
		runTimer('poisonStop',3);
		poison=true;
		addMisses(1)
	end
end

function onStepHit()
    if poison==true then
		health = getProperty('health')
		setProperty('health', getProperty('health')-drain);
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'poisonStop' then
        poison=false
    end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Instakill Note' then
		-- put something here if you want
	end
end