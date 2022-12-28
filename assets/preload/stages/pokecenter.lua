function onCreate()  
    makeLuaSprite('bg', 'stages/pokecenter/images/pokecenterBG', 450, 0);
	setScrollFactor('bg', 0.9, 0.9);
    scaleObject('bg', 0.9, 0.9);
    addLuaSprite('bg', false);
   
    makeLuaSprite('6nursejoy', 'stages/pokecenter/images/6nursejoy', 1580, 620);
	setScrollFactor('6nursejoy', 0.9, 0.9);
    scaleObject('6nursejoy', 0.9,0.9);
    addLuaSprite('6nursejoy', false);

    makeLuaSprite('5table', 'stages/pokecenter/images/5table', 450, 0);
	setScrollFactor('5table', 0.9, 0.9);
    scaleObject('5table', 0.9, 0.9);
    addLuaSprite('5table', false); 

    setProperty('skipCountdown', true);
    setProperty('camHUD.alpha',0) 
end

function onCreatePost()
   nurseJoyAngle = getProperty('6nursejoy.angle');    
   setProperty('6nursejoy.origin.x', 75);
   setProperty('6nursejoy.origin.y', 0);
end

function onStepHit()
if curStep == 242 then
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.2,cubeInOut)
end
if curStep == 1189 then
doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreforever', 0, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.2)
	doTweenAlpha('AlphaTween6', 'NameSong', 0, 0.2)
	doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0, 0.2)
end
if curStep == 1456 then
doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreforever', 1, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.2)
	doTweenAlpha('AlphaTween6', 'NameSong', 1, 0.2)
	doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 1, 0.2)
end
end

function onUpdatePost(elapsed)
   setTextString("botplayTxt", "Botplay\nno debiste venir aquí")
   setProperty('6nursejoy.angle', nurseJoyAngle + math.sin((180 / math.pi) * ((getPropertyFromClass('Conductor', 'songPosition') / 1000) / 36)) * 3);
end