--No se quien habrá hecho el código base pero créditos a esa persona
--Yo solo adapté el code para que se lo más parecido a el de Hypno,pero conste si fue un trabajazo (Nickobelit)

fakePaused = false
cSelected = false
rSelected = false
eSelected = false

canPause = true

function onGameOver()
setProperty('GodP.alpha', 0)
canPause = false
end

function onPause()
if difficultyName == 'Hard' or difficultyName == 'Pussy' then
	return Function_Stop;
end
end

function onCreate() --Funcional en Android por Nickobelit p
if difficultyName == 'Hard' or difficultyName == 'Pussy' then
	luaDebugMode = true
	precacheSound('LullabyPause')
	precacheSound('scrollMenu')
	precacheSound('confirmMenu')

	makeLuaSprite('player', 'pause/'.. songName ..'/left', 0, 0)
	addLuaSprite('player', true)
	setObjectCamera('player', 'camOther')
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
       setProperty('oponnent.alpha', 0)
	
	makeLuaSprite('pauseTextBox', 'pauseScreen/pause-textbox', 400, 240)
	addLuaSprite('pauseTextBox', true)
	setObjectCamera('pauseTextBox', 'camOther')
	scaleObject('pauseTextBox', 8,8);
	setProperty('pauseTextBox.alpha', 0)
	setProperty('pauseTextBox.antialiasing',false)
	
	if songName == "Shinto" or songName == "Shitno" then
    makeLuaSprite('pauseTextBox', 'pauseScreen/pause-shinto', 400, 240)
	addLuaSprite('pauseTextBox', true)
	setObjectCamera('pauseTextBox', 'camOther')
	scaleObject('pauseTextBox', 5,5);
	setProperty('pauseTextBox.alpha', 0)
	setProperty('pauseTextBox.antialiasing',false)
    end
    
    if songName == "Monochrome" then
    makeLuaSprite('pauseTextBox', 'pauseScreen/pause-gold', 400, 240)
	addLuaSprite('pauseTextBox', true)
	setObjectCamera('pauseTextBox', 'camOther')
	scaleObject('pauseTextBox', 8,8);
	setProperty('pauseTextBox.alpha', 0)
	setProperty('pauseTextBox.antialiasing',false)
     end

	makeLuaSprite('pauseOptions', 'pauseScreen/pauseOptions', 540, 303)
	addLuaSprite('pauseOptions', true)
	setObjectCamera('pauseOptions', 'camOther')
	scaleObject('pauseOptions', 0.25,0.25);
	setProperty('pauseOptions.alpha', 0)
	
	makeLuaSprite('selector', 'pauseScreen/selector', 490, 300)
	addLuaSprite('selector', true)
	setObjectCamera('selector', 'camOther')
	scaleObject('selector', 0.25,0.25);
	setProperty('selector.alpha', 0)
	
	    makeAnimatedLuaSprite('Nicko', 'pauseScreen/virtualbuttons',1150, 588);
		addAnimationByPrefix('Nicko', 'down', 'down', 24, false);
		addAnimationByPrefix('Nicko', 'downPress', 'downPressed', 24, false);
		addLuaSprite('Nicko', true);
		setObjectCamera('Nicko', 'other')
		setProperty('Nicko.alpha', 0)
		
		makeAnimatedLuaSprite('Belit', 'pauseScreen/virtualbuttons',1018, 588);
		addAnimationByPrefix('Belit', 'up', 'up', 24, false);
		addAnimationByPrefix('Belit', 'upPress', 'upPressed', 24, false);
		addLuaSprite('Belit', true);
		setObjectCamera('Belit', 'other')
		setProperty('Belit.alpha', 0)
		
		makeAnimatedLuaSprite('GodP', 'pauseScreen/virtualbuttons', 0, 650);
		addAnimationByPrefix('GodP', 'a', 'a', 24, false);
		addAnimationByPrefix('GodP', 'aPress', 'aPressed', 24, false);
		addLuaSprite('GodP', true);
		scaleObject('GodP', 0.5,0.5);
		setObjectCamera('GodP', 'other')
		
	setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 7);
end
end

function onUpdatePost(elapsed)
if noPause == true then
    canPause = false
end
if songName == "Frostbite" then
if curStep >= 1376 then
        canPause = false
end
end
if songName == "Insomnia" then
if curStep >= 3403 then
        canPause = false
end
end
if songName == "Brimstone" then
if curStep < 160 then
        setProperty('oponnent.alpha', 0)
end
end
if songName == "Lost-Cause" then
if curStep < 320 then
        setProperty('oponnent.alpha', 0)
end
end
if songName == "Missingno" then
       if curStep < 375 then
        setProperty('player.alpha', 0)
end
end
if songName == "Shitno" then
       if curStep < 416 then
        setProperty('oponnent.alpha', 0)
end
       if curStep >= 2928 then
        canPause = false
end
end
if difficultyName == 'Hard' or difficultyName == 'Pussy' then
	if (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 70) and (getMouseY('camHUD') > 635 and getMouseY('camHUD') < 720 and mouseClicked('left')) and fakePaused == false and not getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and canPause or keyJustPressed('accept') and fakePaused == false and not getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and canPause then
       setProperty('Nicko.alpha', 1)
       setProperty('Belit.alpha', 1)
       doTweenAlpha('holaPlayer', 'player', 1, 0.5)
       doTweenAlpha('holaOponnent', 'oponnent', 1, 0.5)
       doTweenAlpha('holaCaja', 'pauseTextBox', 1, 0.5)
       doTweenAlpha('holaText', 'pauseOptions', 1, 0.5)
       doTweenAlpha('holaSelector', 'selector', 1, 0.5)
       doTweenAlpha('adiosHUD', 'camHUD', 0, 0.5)
       doTweenAlpha('adiosGame', 'camGame', 0.3, 0.5)
       
       doTweenAlpha('adiosTecla', 'BotonPendulo', 0, 0.5)
        objectPlayAnimation('GodP', 'aPress', false);
        playSound('confirmMenu', 0.3)
        playSound('LullabyPause', 0,'Pause')
        soundFadeIn('Pause', 2, 0,0.6)
        stopSound('trance')
        setProperty('LyricAbajo.visible',false)
	    setProperty('LyricArriba.visible',false)
		cSelected = true
		rSelected = false
		eSelected = false
		fakePaused = true
	elseif (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 70) and (getMouseY('camHUD') > 635 and getMouseY('camHUD') < 720 and mouseClicked('left')) and fakePaused == true and not getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and canPause or keyJustPressed('accept') and fakePaused == true and not getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and canPause then
		plsHelp()
	end
	if cSelected == true then
		doTweenY('cTweenY', 'selector', 300, 0.1, 'linear')
	end
	if rSelected == true then
		doTweenY('rTweenY', 'selector', 340 , 0.1, 'linear')
	end
	if eSelected == true then
		doTweenY('eTweenY', 'selector', 378, 0.1, 'linear')
	end
	if fakePaused == true then
		setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - elapsed * 1000  )
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
		setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
	elseif fakePaused == false and canPause then
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
	end
	damnIWannaDie()
end
end

function onEvent(name, value_1, value_2)
	if name == "Unown" then
      noPause = true
      runTimer('vuelvePause',6)
end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'vuelvePause' then
    noPause = false
    canPause = true
end
end

function damnIWannaDie()
if difficultyName == 'Hard' or difficultyName == 'Pussy' then
 if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1282) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) and fakePaused == true or keyJustPressed('down') and fakePaused == true then
     objectPlayAnimation('Nicko', 'downPress', false);
		if cSelected == true then
			cSelected = false
			rSelected = true
			playSound('scrollMenu', 0.3)
		elseif rSelected == true then
			rSelected = false
			eSelected = true
			playSound('scrollMenu', 0.3)
		elseif eSelected == true then
			eSelected = false
			cSelected = true
			playSound('scrollMenu', 0.3)
		end
end
	if (getMouseX('camHUD') > 1018 and getMouseX('camHUD') < 1150) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) and fakePaused == true or keyJustPressed('up') and fakePaused == true then
     objectPlayAnimation('Belit', 'upPress', false);
		if cSelected == true then
			cSelected = false
			eSelected = true
			playSound('scrollMenu', 0.3)
		elseif rSelected == true then
			rSelected = false
			cSelected = true
			playSound('scrollMenu', 0.3)
		elseif eSelected == true then
			eSelected = false
			rSelected = true
			playSound('scrollMenu', 0.3)
		end
	end
end
end

function plsHelp()
if difficultyName == 'Hard' or difficultyName == 'Pussy' then
	if cSelected == true then--Si no selecionas nada xd
       if songName == "Lost-Cause" or songName == "Safety Lullaby"  or songName == "Left-Unckeched" or difficultyName == 'Mx' or difficultyName == 'Lord-X' then
       playSound('TranceStatic', 0, 'trance')
       end
	  setProperty('LyricAbajo.visible',true)
	  setProperty('LyricArriba.visible',true)
       stopSound('Pause')
       setProperty('Nicko.alpha', 0)
       setProperty('Belit.alpha', 0)
       setProperty('player.alpha', 0)
       setProperty('oponnent.alpha', 0)
       setProperty('pauseTextBox.alpha', 0)
       setProperty('pauseOptions.alpha', 0)
       setProperty('selector.alpha', 0)
       setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
       doTweenAlpha('holaHUD', 'camHUD', 1, 0.2)
       doTweenAlpha('holaGame', 'camGame', 1, 0.2)
       doTweenAlpha('holaTecla', 'BotonPendulo', 1, 0.5)
		setProperty('vocals.volume', 1)
		doTweenX('pauseRightTween2', 'pauseRight', 800, 0.2, 'linear')
		doTweenX('pauseLeftTween2', 'pauseLeft', -800, 0.2, 'linear')
		doTweenX('fakeTimeBarTween2', 'fakeTimeBar', -800, 0.2, 'linear')
		doTweenX('cTween2', 'continue', 800, 0.2, 'linear')
		doTweenX('rTween', 'restart', 800, 0.2, 'linear')
		doTweenX('eTween', 'exist', 800, 0.2, 'linear')
		doTweenX('pauseIconTween', 'pauseIcon', -800, 1, 'circInOut')
		doTweenAngle('pauseIconTweenAng', 'pauseIcon', 180, 1, 'circInOut')
		cSelected = false
		rSelected = false
		eSelected = false
		fakePaused = false
        playSound('confirmMenu', 0.3)
	elseif rSelected == true then
		restartSong(true);
		playSound('confirmMenu', 0.3)
	elseif eSelected == true then
		exitSong(true)
		playSound('confirmMenu', 0.3)
	end
end
end

function onStepHit()
if songName == "Monochrome" then
if curStep == 1664 then
    makeLuaSprite('player', 'pause/'.. songName ..'/left-nomore', 0, 0)
	addLuaSprite('player', true)
	setObjectCamera('player', 'camOther')
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right-nomore', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
end
if songName == "Brimstone" then
if curStep == 1280 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right-gengar', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 1728 then
    makeLuaSprite('player', 'pause/'.. songName ..'/left-missingno', 0, 0)
	addLuaSprite('player', true)
	setObjectCamera('player', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 1856 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 1920 then
    makeLuaSprite('player', 'pause/'.. songName ..'/left', 0, 0)
	addLuaSprite('player', true)
	setObjectCamera('player', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 1984 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right-gengar', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 2047 then
    makeLuaSprite('player', 'pause/'.. songName ..'/left-missingno', 0, 0)
	addLuaSprite('player', true)
	setObjectCamera('player', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 2400 then
    makeLuaSprite('player', 'pause/'.. songName ..'/left', 0, 0)
	addLuaSprite('player', true)
	setObjectCamera('player', 'camOther')
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 2714 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right-muk', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 2976 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 3108 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right-muk', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 3236 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 3268 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right-muk', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 3360 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 3392 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right-muk', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 3488 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right-gf', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 4256 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 4384 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right-gf', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 4514 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 4640 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right-gf', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
if curStep == 4752 then
	makeLuaSprite('oponnent', 'pause/'.. songName ..'/right', 580, 0)
	addLuaSprite('oponnent', true)
	setObjectCamera('oponnent', 'camOther')
	setProperty('player.alpha', 0)
    setProperty('oponnent.alpha', 0)
    setObjectOrder('player', 1);
	setObjectOrder('oponnent', 2);
	setObjectOrder('pauseTextBox', 3);
	setObjectOrder('selector', 4);
	setObjectOrder('Nicko', 5);
	setObjectOrder('Belit', 6);
	setObjectOrder('GodP', 6);
    end
end

if curStep == 2080 then
if songName == "Amusia" then
canPause = false
setProperty('GodP.alpha', 0)
end
end
end