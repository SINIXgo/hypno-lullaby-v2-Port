function onCreate()
	-- background shit
	setProperty('defaultCamZoom', 0.9)
	makeLuaSprite('floor', 'stages/shitno/floor', 90, 400);
     setLuaSpriteScrollFactor('floor', 0.95, 0.95);
	scaleObject('floor', 0.9, 0.9);
addLuaSprite('floor', false);

makeLuaSprite('shitnoJumpscare', 'jumpscares/Shitno', 0, 0);
   scaleObject('shitnoJumpscare', 0.325,0.325);
    addLuaSprite('shitnoJumpscare', true);
    setProperty('shitnoJumpscare.alpha',0)
    setObjectCamera("shitnoJumpscare", 'other')
    
    makeLuaSprite('BarradeArriba', '', 0, -120)
makeGraphic('BarradeArriba', 1280, 120, '000000')
setObjectCamera('BarradeArriba', 'camHUD')
addLuaSprite('BarradeArriba', true)

makeLuaSprite('BarradeAbajo', '', 0, 720)
makeGraphic('BarradeAbajo', 1280, 120, '000000')
setObjectCamera('BarradeAbajo', 'camHUD')
addLuaSprite('BarradeAbajo', true)

zoomshit = (getProperty('camGame.zoom')/0.75);
setCharacterX('boyfriend',bfx*zoomshit)
setCharacterY('boyfriend',bfy*zoomshit)
setProperty('boyfriend.scale.x',zoomshit)
setProperty('boyfriend.scale.y',zoomshit)
end

function onCreatePost()
    setProperty("gf.visible", false)
    setProperty('dad.alpha', 0);
    setProperty('floor.alpha', 0);
    setProperty('camGame.alpha', 0);
    setProperty('camHUD.alpha', 0);
    setProperty('iconP2.alpha', 0);      
end

function onUpdatePost()
        setTextString("botplayTxt", "Cheater")
        setPropertyFromGroup('opponentStrums',0,'alpha',0);
		setPropertyFromGroup('opponentStrums',1,'alpha',0);
		setPropertyFromGroup('opponentStrums',2,'alpha',0);
		setPropertyFromGroup('opponentStrums',3,'alpha',0)
		if curStep > 2945 then
		setProperty('camHUD.alpha', 0);
        end
		end

function onStepHit()
      if curStep == 8 then
        doTweenAlpha('camGame', 'camGame', 1, 3.5, 'quadInOut');
        end
        if curStep == 112 then
        doTweenAlpha('hud', 'camHUD', 0.8, 3.8, 'quadInOut')
        end
	if curStep == 416 then
		doTweenAlpha('camHUD', 'camHUD', 0, 0.1, 'linea');
		doTweenAlpha('floor1', 'floor', 0.25, 0.1, 'quadInOut');
		doTweenAlpha('iconP2', 'iconP2', 0.25, 0.1, 'quadInOut');
		doTweenAlpha('dad1', 'dad', 0.25, 0.1, 'quadInOut')
	end	
		if curStep == 420 then
		doTweenAlpha('floor2', 'floor', 0.50, 0.1, 'quadInOut');
		doTweenAlpha('iconP2', 'iconP2', 0.50, 0.1, 'quadInOut');
		doTweenAlpha('dad2', 'dad', 0.50, 0.1, 'quadInOut')
        setProperty('health', 1);
	end		
	if curStep == 424 then
		doTweenAlpha('floor3', 'floor', 0.75, 0.1, 'quadInOut');
		doTweenAlpha('iconP2', 'iconP2', 0.75, 0.1, 'quadInOut');
		doTweenAlpha('dad3', 'dad', 0.75, 0.1, 'quadInOut')

	end	
if curStep == 426 then
		doTweenX("boyfriendx", "boyfriend", 1150, 0.9, "quadInOut");
		doTweenY("boyfriendy", "boyfriend",250, 0.9, "quadInOut");
	end	
	if curStep == 428 then
		doTweenAlpha('camHUD', 'camHUD', 1, 2, 'linea');
		doTweenAlpha('AlphaTween1', 'healthBarBG', 0.8, 2)
	    doTweenAlpha('AlphaTween2', 'healthBar', 0.8, 2)
	    doTweenAlpha('AlphaTween3', 'scoreforever', 0.8, 2)
	    doTweenAlpha('AlphaTween4', 'iconP1', 0.8, 2)
	    doTweenAlpha('AlphaTween5', 'iconP2', 0.8, 2)
	    doTweenAlpha('AlphaTween6', 'NameSong', 0.8, 2)
	    doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0.8, 2)
		doTweenAlpha('floor4', 'floor', 1, 0.1, 'quadInOut');
		doTweenAlpha('dad4', 'dad', 1, 0.1, 'quadInOut');
	end
       if curStep == 1232 then
        doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
        doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
        doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 1)
	    doTweenAlpha('AlphaTween2', 'healthBar', 0, 1)
	    doTweenAlpha('AlphaTween3', 'scoreforever', 0, 1)
	    doTweenAlpha('AlphaTween4', 'iconP1', 0, 1)
	    doTweenAlpha('AlphaTween5', 'iconP2', 0, 1)
	    doTweenAlpha('AlphaTween6', 'NameSong', 0, 1)
	    doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0, 1)
        end
        if curStep == 2000 then
        doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quadInOut')
        doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quadInOut')
        doTweenAlpha('AlphaTween1', 'healthBarBG', 0.8, 2)
	    doTweenAlpha('AlphaTween2', 'healthBar', 0.8, 2)
	    doTweenAlpha('AlphaTween3', 'scoreforever', 0.8, 2)
	    doTweenAlpha('AlphaTween4', 'iconP1', 0.8, 2)
	    doTweenAlpha('AlphaTween5', 'iconP2', 0.8, 2)
	    doTweenAlpha('AlphaTween6', 'NameSong', 0.8, 2)
	    doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0.8, 2)
        end
		if curStep == 2928 then
			doTweenAlpha('camGame', 'camGame', 0, 1, 'quadInOut')
			doTweenAlpha('camHUD', 'camHUD', 0, 1, 'quadInOut')
			 end
     if curStep > 2945 and curStep < 3150 then
         cameraShake('other', 0.05, 0.2)
         cameraShake('game', 0.05, 0.2)
         end
		function onBeatHit()
		if curStep > 2945 and curStep < 3008 then
		if curBeat % 2== 1 then
			doTweenAlpha('camGame3', 'camGame', 0, 0.1, 'linear')
		end
			if curBeat % 2== 0 then
				doTweenAlpha('camGame4', 'camGame', 0.25, 0.1, 'linear')
			end
	end
	end
if curStep==3008 then
doTweenAlpha('holaShitno','shitnoJumpscare',1,5)
doTweenAlpha('adiosJuego', 'camGame', 0, 0.2, 'linear')
  end
if curStep==3088 then
doTweenAlpha('adiosOther', 'camOther', 0, 1.5, 'linear')
  end
end