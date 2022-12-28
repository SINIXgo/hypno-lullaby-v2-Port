function onCreate()
    makeLuaSprite('sky', 'stages/bygone/images/1Sky', 0, 0);
	scaleObject('sky', 1.2, 1.2);
	addLuaSprite('sky', false);
	
	makeAnimatedLuaSprite('bullies', 'stages/bygone/images/Bullies_Bygone', 1400, 330); 
    addAnimationByPrefix('bullies', 'idle', 'idle', 10,false) 
    scaleObject('bullies', 1,1);
    addLuaSprite('bullies', false);
    
	makeLuaSprite('bridge', 'stages/bygone/images/5Bridge', 0, 0);
	scaleObject('bridge', 1.2, 1.2);
	addLuaSprite('bridge', false);
	
    makeLuaSprite('sad-sky', 'stages/bygone/images/1Sky-alt', 0, -80);
	scaleObject('sad-sky', 1.2, 1.2);
	addLuaSprite('sad-sky', false);
	
	makeLuaSprite('sad-bridge', 'stages/bygone/images/5Bridge-Alt', 0, 0);
	scaleObject('sad-bridge', 1.2, 1.2);
	addLuaSprite('sad-bridge', false);
	
    makeLuaSprite('alexis-memory', 'stages/bygone/images/AlexisTransition', 250, 0);
	scaleObject('alexis-memory', 0.9, 0.9);
	addLuaSprite('alexis-memory', false);
	setObjectCamera('alexis-memory', 'other');
	setProperty('alexis-memory.alpha', 0);
	
    makeAnimatedLuaSprite('heavens', 'stages/bygone/images/Heavens Gate', 800, -150);
    addAnimationByPrefix('heavens', 'idle', 'Heavens Gate', 24, false);
    scaleObject('heavens', 0.9, 0.9);
	addLuaSprite('heavens', true);
	setObjectCamera('heavens', 'other');

    makeAnimatedLuaSprite('alexis-bye', 'stages/bygone/images/GGirl Alexis Passing Spritesheet', 850, -150);
    scaleObject('alexis-bye', 0.9, 0.9);
    addAnimationByPrefix('alexis-bye', 'idle', 'GGirl Passing', 24, false);
	addLuaSprite('alexis-bye', true);
	setObjectCamera('alexis-bye', 'other');
	
	setProperty('sad-sky.visible', false);
    setProperty('sad-bridge.visible', false);
    setProperty('heavens.visible', false);
    setProperty('alexis-bye.visible', false);
	
	setObjectOrder('dadGroup', 0);
	setObjectOrder('sky', 1);
	setObjectOrder('boyfriendGroup', 2);
	setObjectOrder('bullies', 3);
	setObjectOrder('bridge', 4);
	setObjectOrder('alexis-memory', 5);
	
	setProperty('camHUD.alpha', 0);
	setProperty('skipCountdown', true);
end

function onBeatHit()
objectPlayAnimation('bullies', 'idle',true);
end

function onStepHit()
    if curStep == 17 then
    doTweenAlpha('holaHUD', 'camHUD', 1, 1,'linear')
    end
    if curStep == 156 then
    doTweenAlpha('adiosHUD', 'camHUD', 0, 1,'linear')
    end
    if curStep == 183 then
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.2,'linear')
    end
    if curStep == 578 then
    doTweenAlpha('adiosHUD', 'camHUD', 0, 1.2,'linear')
    end
    if curStep == 588 then
    doTweenAlpha('holaMemory', 'alexis-memory', 1, 6,'sineOut');
    end
    if curStep == 620 then
    setProperty('boyfriend.alpha', 0);
    end
    if curStep == 628 then
    doTweenAlpha('adiosMemory', 'alexis-memory', 0, 10,'sineOut');
    end
    if curStep == 631 then
      setProperty('sad-sky.visible', true);
      setProperty('sad-support.visible', true);
      setProperty('sad-hypno.visible', true);
      setProperty('sad-bridge.visible', true);
      doTweenAlpha('adiosSky', 'sky', 0, 10,'sineOut')
      doTweenAlpha('adiosBullies', 'bullies', 0, 10,'sineOut')
      doTweenAlpha('adiosBridge', 'bridge', 0, 10,'sineOut')
	  setObjectOrder('sad-sky', 1);
	  setObjectOrder('boyfriendGroup', 2);
	  setObjectOrder('sad-bridge', 3);
	  setObjectOrder('heavens', 4);
	  setObjectOrder('alexis-bye', 5);
	  setProperty('health', 1);
    end
    if curStep == 711 then
    doTweenAlpha('holaAlexis', 'boyfriend', 1, 0.8,cubeInOut)
    removeLuaSprite('sky',true)
    removeLuaSprite('support',true)
    removeLuaSprite('bridge',true)
    removeLuaSprite('bullies',true)
    end
    if curStep == 713 then
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.2,cubeInOut)
    end
    if curStep == 1236 then
    setProperty('boyfriend.alpha', 0);
    setProperty('heavens.visible', true);
    setProperty('alexis-bye.visible', true);
	objectPlayAnimation('heavens', 'idle', true);
	objectPlayAnimation('alexis-bye', 'idle', true);
	end
   if curStep == 1237 then
    doTweenAlpha('adiosHUD', 'camHUD', 0, 0.2,cubeInOut)
    end
    if curStep == 1246 then
    setProperty('heavens.visible', false);
    setProperty('alexis-bye.visible', false);
    end
end

function noteMiss()
   if curStep > 713 then
    missRandom = string.format('Electric_miss%i', math.random(1, 5));
    playSound(missRandom, 0.5);
  end
end

function onUpdatePost()
    setTextString("botplayTxt","Botplay\nSolo lanzate como ella")
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
    noteTweenX("noteMove01", 0, 732, 0.01, cubeInOut)
    noteTweenX("noteMove02", 1, 844, 0.01, cubeInOut)
    noteTweenX("noteMove03", 2, 956, 0.01, cubeInOut)
    noteTweenX("noteMove04", 3, 1068, 0.01, cubeInOut)
    noteTweenX("noteMove05", 4, 92, 0.01, cubeInOut)
    noteTweenX("noteMove06", 5, 204, 0.01, cubeInOut)
    noteTweenX("noteMove07", 6, 316, 0.01, cubeInOut)
    noteTweenX("noteMove08", 7, 428, 0.01, cubeInOut)
    end
    noteTweenAlpha("noteAlpha1", 0, 0, 0.01, cubeInOut)
	noteTweenAlpha("noteAlpha2", 1, 0, 0.01, cubeInOut)
	noteTweenAlpha("noteAlpha3", 2, 0, 0.01, cubeInOut)
	noteTweenAlpha("noteAlpha4", 3, 0, 0.01, cubeInOut)
    noteTweenAlpha("noteAlpha5", 4, 0.8, 0.01, cubeInOut)
	noteTweenAlpha("noteAlpha6", 5, 0.8, 0.01, cubeInOut)
	noteTweenAlpha("noteAlpha7", 6, 0.8, 0.01, cubeInOut)
	noteTweenAlpha("noteAlpha8", 7, 0.8, 0.01, cubeInOut)
end