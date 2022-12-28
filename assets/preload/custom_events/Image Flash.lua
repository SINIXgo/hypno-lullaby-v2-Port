function onCreate()
precacheImage('jumpscares/Gold')
precacheImage('jumpscares/GoldAlt')
end

function onEvent(name, value1, value2)
	if name == "Image Flash" then
		if value1 == "Gold" then
            makeLuaSprite('image', 'jumpscares/Gold', -50, -50);
			scaleObject('image', 0.35, 0.35)
		elseif value1 == "GoldAlt" then         
			makeLuaSprite('image', 'jumpscares/GoldAlt', -340, -220)    
			scaleObject('image', 0.5, 0.52)
		end
        addLuaSprite('image', true);
        setObjectCamera('image', 'other');
		setObjectOrder('image', 1)
		runTimer('chauP', value2);
	   stopShake = false
	end
end

function onUpdate()
if stopShake == false then
cameraShake('other', 0.0125, 0.5)
end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'chauP' then
		doTweenAlpha('adiosJumpscare', 'image', 0, 0.1, 'linear');
		stopShake = true
	end
end

function onTweenCompleted(tag)
	if tag == 'adiosJumpscare' then
		removeLuaSprite('image', true);
		cameraShake('other', 0,0)
	end
end