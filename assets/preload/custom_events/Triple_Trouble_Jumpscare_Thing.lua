-- to anyone checking the code, I just copy pasted the shit from vs sonic.exe and didnt rename the folders lol

-- images for the jumpscares, put in mods/images/JUMPSCARES
local TailsImage = 'JUMPSCARES/Tails'
local KnuxImage = 'JUMPSCARES/Knuckles'
local EggmanImage = 'JUMPSCARES/Eggman'

-- sounds for the jumpscares, put them in mods/sounds/P3Jumps
local TailsSound = 'P3Jumps/TailsScreamLOL'
local KnuxSound = 'P3Jumps/KnucklesScreamLOL'
local EggmanSound = 'P3Jumps/EggmanScreamLOL'

-- here for convenience's sake in case I fuck up anything
local disappeartime = 0.3
local volume = 1

function onCreate()

	precacheSound(TailsSound)
	precacheSound(KnuxSound)
	precacheSound(EggmanSound)

	makeLuaSprite('TailsJumpscare', TailsImage, 0, 0)
	screenCenter('TailsJumpscare', 'xy')
	setObjectCamera('TailsJumpscare', 'other')
	setProperty('TailsJumpscare.alpha', 0)

	makeLuaSprite('KnuxJumpscare', KnuxImage, 0, 0)
	screenCenter('KnuxJumpscare', 'xy')
	setObjectCamera('KnuxJumpscare', 'other')
	setProperty('KnuxJumpscare.alpha', 0)
	
	makeLuaSprite('EggmanJumpscare', EggmanImage, 0, 0)
	screenCenter('EggmanJumpscare', 'xy')
	setObjectCamera('EggmanJumpscare', 'other')
	setProperty('EggmanJumpscare.alpha', 0)
	
	addLuaSprite('TailsJumpscare', true)
	addLuaSprite('KnuxJumpscare', true)
	addLuaSprite('EggmanJumpscare', true)
	
end

function onEvent(name, value1, value2)
	if name == "Triple_Trouble_Jumpscare_Thing" then
		character = value1;
		sound = value2;
		if character == 'tails' and sound == 'on' then
			setProperty('TailsJumpscare.alpha', 1)
			playSound(TailsSound, volume)
			runTimer('tailstimer', disappeartime, 1)
		elseif character == 'knuckles' and sound == 'on' then
			setProperty('KnuxJumpscare.alpha', 1)
			playSound(KnuxSound, volume)
			runTimer('knuxtimer', disappeartime, 1)
		elseif character == 'eggman' and sound == 'on' then
			setProperty('EggmanJumpscare.alpha', 1)
			playSound(EggmanSound, volume)
			runTimer('eggmantimer', disappeartime, 1)
		elseif character == 'tails' and sound == 'off' then
			setProperty('TailsJumpscare.alpha', 1)
			runTimer('tailstimer', disappeartime, 1)
		elseif character == 'knuckles' and sound == 'off' then
			setProperty('KnuxJumpscare.alpha', 1)
			runTimer('knuxtimer', disappeartime, 1)
		elseif character == 'eggman' and sound == 'off' then
			setProperty('EggmanJumpscare.alpha', 1)
			runTimer('eggmantimer', disappeartime, 1)
		end
	end
end

function onTimerCompleted(tag)
    if tag == 'tailstimer' then
		doTweenAlpha('tailsfade', 'TailsJumpscare', 0, 0.001, linear)
		
    elseif tag == 'knuxtimer' then
		doTweenAlpha('knuxfade', 'KnuxJumpscare', 0, 0.001, linear)
		
    elseif tag == 'eggmantimer' then
		doTweenAlpha('eggmanfade', 'EggmanJumpscare', 0, 0.001, linear)
    end
end