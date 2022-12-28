
function onCreate()

	setProperty('camZooming', false)
    setProperty('skipCountdown', true)

	makeAnimatedLuaSprite('background', 'stages/shitty-cave/images/BG_shitno', -0, -0)
	addAnimationByPrefix('background','bg','BG_shitno_01',0,false)
	scaleObject('background', 6, 6);

	makeAnimatedLuaSprite('topbackground', 'stages/shitty-cave/images/BG_shitno', -0, -0)
	addAnimationByPrefix('topbackground','bg','BG_shitno_02',0,false)
	scaleObject('topbackground', 6, 6);

	addLuaSprite('background',false)
	addLuaSprite('topbackground',false)

	setProperty('background.antialiasing',false)
	setProperty('topbackground.antialiasing',false)

	makeAnimatedLuaSprite('pokeball', 'characters/shinto/shitno_pokeball', 1000, 550)
	addAnimationByPrefix('pokeball','draw','shitno_pokeballend',24,false)
	scaleObject('pokeball', 5, 5);

	addLuaSprite('pokeball',true)
	setProperty('pokeball.antialiasing',false)
    setProperty('pokeball.visible',false)
end

function onCreatePost()
	setProperty('boyfriend.visible',false)
	setProperty('gf.visible',false)
end

function onStepHit()
	if curStep == 2072 then
		setProperty('pokeball.visible',true)
		setProperty('dad.specialAnim',true)
		playAnim('pokeball','draw',true)
	end
	if curStep == 2080 then
		--playSound('huh',1) -- funny thing 1
	end
end
local youdiedlmaoo = false
local youcanrestartnow = false

function onUpdatePost()
	if getProperty('dad.animation.curAnim.name') == 'you died' then
       if getProperty('dad.animation.curAnim.finished') then
		   setProperty('dad.visible',false)
		   youcanrestartnow = true
	   end
	end
	if youdiedlmaoo then
		setPropertyFromClass('Conductor', 'songPosition', 0);
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
	end
end

function onGameOver()
	if youdiedlmaoo == false then
		youdiedlmaoo = true
		playSound('ShintoRetry',1.5) 
		--playSound('lmao',1.5) -- funny thing 2
		doTweenAlpha('haha','camHUD',0,1,'expoOut')
		triggerEvent('Play Animation','you died','dad')
	end
	return Function_Stop;
end
function onEndSong()
	if youdiedlmaoo then
		return Function_Stop;
	end
end
function onPause()
	if youdiedlmaoo == true then
		if youcanrestartnow then
		restartSong()
		end
		return Function_Stop;
	end
	return Function_Continue;
end