
function onCreate()
	makeLuaSprite('background', 'stages/sansno/lukewarm-land', -500, -400)
	addLuaSprite('background')
	scaleObject('background',1.2,1.2)
end

function onCreatePost()
	setProperty('gf.visible',false)
	setProperty('camZooming',true)
	
end

function onStepHit()
	if curStep == 448 then
	    setPropertyFromClass('Conductor', 'songPosition', 0)
	    setPropertyFromClass('flixel.FlxG', 'sound.music.time', 0)
        setProperty('vocal.time', 0)
	end
end