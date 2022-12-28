local allowCountdown = false
inCharSelect = false
jugadorSeleccion = 1
local SelectorX = 488
local SelectorY = 365
local LimiteMaximo = 3
local LimiteMinimo = 1
function onStartCountdown()
    if not allowCountdown and not seenCutscene then
		setProperty('inCutscene', true);
 	    runTimer('holaSelector', 0.2);
        setProperty('camHUD.visible', false);
        
        makeLuaSprite('blackBg','',0,0)
        makeGraphic('blackBg',1280,720,'000000')
        scaleObject('blackBg',3,3);
	    setObjectCamera("blackBg", 'other')
	    addLuaSprite('blackBg', true)

        makeLuaSprite('bgSelector', 'UI/base/pasta/PastaSelect_BG', 250, 30)
	    addLuaSprite('bgSelector', true)
	    setObjectCamera('bgSelector', 'camOther')
	    setProperty('bgSelector.antialiasing',false)
	   scaleObject('bgSelector',3,3);
	
	    makeLuaSprite('mxNormal', 'UI/base/pasta/PastaSelect_MX_01', 425, 418)
	    addLuaSprite('mxNormal', true)
	    setObjectCamera('mxNormal', 'camOther')
	   scaleObject('mxNormal',3,3);
	   setProperty('mxNormal.alpha',1)
	  setProperty('mxNormal.antialiasing',false)
	    
	    makeLuaSprite('mxSeleccionado', 'UI/base/pasta/PastaSelect_MX_02', 425, 418)
	    addLuaSprite('mxSeleccionado', true)
	    setObjectCamera('mxSeleccionado', 'camOther')
	   scaleObject('mxSeleccionado',3,3);
	   setProperty('mxSeleccionado.alpha',0)
	   setProperty('mxSeleccionado.antialiasing',false)

	    makeLuaSprite('mxAzul', 'UI/base/pasta/PastaSelect_MX_03', 425, 418)
	    addLuaSprite('mxAzul', true)
	    setObjectCamera('mxAzul', 'camOther')
	   scaleObject('mxAzul',3,3);
	   setProperty('mxAzul.alpha',0)
	   setProperty('mxAzul.antialiasing',false)
	
	    makeLuaSprite('lordXNormal', 'UI/base/pasta/PastaSelect_LordX_01', 600, 473)
	    addLuaSprite('lordXNormal', true)
	    setObjectCamera('lordXNormal', 'camOther')
	   scaleObject('lordXNormal',3,3);
	   setProperty('lordXNormal.alpha',0)
	   setProperty('lordXNormal.antialiasing',false)
	    
	    makeLuaSprite('lordXSeleccionado', 'UI/base/pasta/PastaSelect_LordX_02', 600, 473)
	    addLuaSprite('lordXSeleccionado', true)
	    setObjectCamera('lordXSeleccionado', 'camOther')
	   scaleObject('lordXSeleccionado',3,3);
	   setProperty('lordXSeleccionado.alpha',0)
	   setProperty('lordXSeleccionado.antialiasing',false)
	
	    makeLuaSprite('lordXAzul', 'UI/base/pasta/PastaSelect_LordX_03', 600, 473)
	    addLuaSprite('lordXAzul', true)
	    setObjectCamera('lordXAzul', 'camOther')
	   scaleObject('lordXAzul',3,3);
	   setProperty('lordXAzul.alpha',1)
	  setProperty('lordXAzul.antialiasing',false)
        
        makeLuaSprite('hypnoNormal', 'UI/base/pasta/PastaSelect_Hypno_01', 725, 455)
	    addLuaSprite('hypnoNormal', true)
	    setObjectCamera('hypnoNormal', 'camOther')
	   scaleObject('hypnoNormal',3,3);
	   setProperty('hypnoNormal.alpha',0)
	   setProperty('hypnoNormal.antialiasing',false)
	    
	    makeLuaSprite('hypnoSeleccionado', 'UI/base/pasta/PastaSelect_Hypno_02', 725, 455)
	    addLuaSprite('hypnoSeleccionado', true)
	    setObjectCamera('hypnoSeleccionado', 'camOther')
	   scaleObject('hypnoSeleccionado',3,3);
	   setProperty('hypnoSeleccionado.alpha',0)
	   setProperty('hypnoSeleccionado.antialiasing',false)
	
	    makeLuaSprite('hypnoAzul', 'UI/base/pasta/PastaSelect_Hypno_03', 725, 455)
	    addLuaSprite('hypnoAzul', true)
	    setObjectCamera('hypnoAzul', 'camOther')
	    scaleObject('hypnoAzul',3,3);
	    setProperty('hypnoAzul.alpha',1)
	    setProperty('hypnoAzul.antialiasing',false)

        makeAnimatedLuaSprite('left', 'pauseScreen/virtualbuttons', 0, 588);
        addAnimationByPrefix('left', 'left', 'left', 24, false);
		addAnimationByPrefix('left', 'leftPress', 'leftPressed', 24, false);
		addLuaSprite('left', true);
		setObjectCamera('left', 'other')
       
		makeAnimatedLuaSprite('right', 'pauseScreen/virtualbuttons', 1148, 588);
		addAnimationByPrefix('right', 'right', 'right', 24, false);
		addAnimationByPrefix('right', 'rightPress', 'rightPressed', 24, false);
		addLuaSprite('right', true);
		setObjectCamera('right', 'other')
		
		makeAnimatedLuaSprite('x', 'pauseScreen/virtualbuttons', 125, 588);
		addAnimationByPrefix('x', 'x', 'x', 24, false);
		addAnimationByPrefix('x', 'aPress', 'xPressed', 24, false);
		addLuaSprite('x', true);
		setObjectCamera('x', 'other')
		
		makeAnimatedLuaSprite('b', 'pauseScreen/virtualbuttons', 1018, 588);
		addAnimationByPrefix('b', 'b', 'b', 24, false);
		addAnimationByPrefix('b', 'bPress', 'bPressed', 24, false);
		addLuaSprite('b', true);
		setObjectCamera('b', 'other')
		
     allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
	
function onUpdate()
if inCharSelect == true then
         makeLuaSprite('pastaSelector', 'UI/base/pasta/PastaSelect_Arrow', SelectorX, SelectorY)
	    addLuaSprite('pastaSelector', true)
	    setObjectCamera('pastaSelector', 'camOther')
	    scaleObject('pastaSelector',3,3);
	    setProperty('pastaSelector.alpha',1)
	    setProperty('pastaSelector.antialiasing',false)
       if (getMouseX('camHUD') > 1148 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) or keyJustPressed('right') or (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 132) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) or keyJustPressed('left') then
			if jugadorSeleccion >= LimiteMaximo and keyJustPressed('right') or jugadorSeleccion >= LimiteMaximo and (getMouseX('camHUD') > 1148 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) then
               objectPlayAnimation('Nicko', 'rightPress', false);
               playSound('scrollMenu', 1);
				jugadorSeleccion = 1
			elseif jugadorSeleccion <= LimiteMinimo and keyJustPressed('left') or jugadorSeleccion <= LimiteMinimo and (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 132) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) then
               objectPlayAnimation('Belit', 'leftPress', false); 
               playSound('scrollMenu', 1);
				jugadorSeleccion = 3
			else
				if (getMouseX('camHUD') > 1148 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) or keyJustPressed('right') then
					objectPlayAnimation('right', 'rightPress', false);
					playSound('scrollMenu', 1);
					jugadorSeleccion = jugadorSeleccion + 1
				end
				if (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 132) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) or keyJustPressed('left') then
					objectPlayAnimation('left', 'leftPress', false);
			        playSound('scrollMenu', 1);
			        jugadorSeleccion = jugadorSeleccion-1
				end
			end
           if jugadorSeleccion == 1 then
				SelectorX = 487
				SelectorY = 365
				setProperty('mxNormal.alpha',1)
				setProperty('mxSeleccionado.alpha',0)
				setProperty('mxAzul.alpha',0)
				setProperty('lordXNormal.alpha',0)
				setProperty('lordXSeleccionado.alpha',0)
				setProperty('lordXAzul.alpha',1)
				setProperty('hypnoNormal.alpha',0)
				setProperty('hypnoSeleccionado.alpha',0)
				setProperty('hypnoAzul.alpha',1)
			elseif jugadorSeleccion == 2 then
				SelectorX = 627
				SelectorY = 365
				setProperty('mxNormal.alpha',0)
				setProperty('mxSeleccionado.alpha',0)
				setProperty('mxAzul.alpha',1)
				setProperty('lordXNormal.alpha',1)
				setProperty('lordXSeleccionado.alpha',0)
				setProperty('lordXAzul.alpha',0)
				setProperty('hypnoNormal.alpha',0)
				setProperty('hypnoSeleccionado.alpha',0)
				setProperty('hypnoAzul.alpha',1)
			elseif jugadorSeleccion == 3 then
				SelectorX = 755
				SelectorY = 365
				setProperty('mxNormal.alpha',0)
				setProperty('mxSeleccionado.alpha',0)
				setProperty('mxAzul.alpha',1)
				setProperty('lordXNormal.alpha',0)
				setProperty('lordXSeleccionado.alpha',0)
				setProperty('lordXAzul.alpha',1)
				setProperty('hypnoNormal.alpha',1)
				setProperty('hypnoSeleccionado.alpha',0)
				setProperty('hypnoAzul.alpha',0)
			end
end
		if (getMouseX('camHUD') > 125 and getMouseX('camHUD') < 257) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) or keyJustPressed('accept') then
			objectPlayAnimation('a', 'aPress', false);
	        if jugadorSeleccion == 1 then
                setProperty('mxNormal.alpha',0)
				setProperty('mxSeleccionado.alpha',1)
				setProperty('mxAzul.alpha',0)
				setProperty('lordXNormal.alpha',0)
				setProperty('lordXSeleccionado.alpha',0)
				setProperty('lordXAzul.alpha',1)
				setProperty('hypnoNormal.alpha',0)
				setProperty('hypnoSeleccionado.alpha',0)
				setProperty('hypnoAzul.alpha',1)
				runTimer('MX', 0.3)
        end
            if jugadorSeleccion == 2 then
                setProperty('mxNormal.alpha',0)
				setProperty('mxSeleccionado.alpha',0)
				setProperty('mxAzul.alpha',1)
				setProperty('lordXNormal.alpha',0)
				setProperty('lordXSeleccionado.alpha',1)
				setProperty('lordXAzul.alpha',0)
				setProperty('hypnoNormal.alpha',0)
				setProperty('hypnoSeleccionado.alpha',0)
				setProperty('hypnoAzul.alpha',1)
				runTimer('Lord-X', 0.3)
        end
            if jugadorSeleccion == 3 then
                setProperty('mxNormal.alpha',0)
				setProperty('mxSeleccionado.alpha',0)
				setProperty('mxAzul.alpha',1)
				setProperty('lordXNormal.alpha',0)
				setProperty('lordXSeleccionado.alpha',0)
				setProperty('lordXAzul.alpha',1)
				setProperty('hypnoNormal.alpha',0)
				setProperty('hypnoSeleccionado.alpha',1)
				setProperty('hypnoAzul.alpha',0)
				runTimer('Hypno', 0.3)
        end
		end

		if (getMouseX('camHUD') > 1018 and getMouseX('camHUD') < 1150) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) or keyJustPressed('back') then
        objectPlayAnimation('b', 'bPress', false);
            exitSong(true)
			end
      end
      end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'holaSelector' then 
		inCharSelect = true
        playMusic('PastaNightSelect', 1, true);
	end
if tag == 'MX' then
loadSong('pasta-night',1)
end
if tag == 'Lord-X' then
loadSong('pasta-night',2)
end
if tag == 'Hypno' then
loadSong('pasta-night',3)
end
end