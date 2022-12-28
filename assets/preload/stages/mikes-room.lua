function onCreate()
	makeLuaSprite('back', 'stages/mikes-room/back', 0, 0);
	scaleObject('back', 0.9, 0.9);
	addLuaSprite('back', false);
	
	makeLuaSprite('bed', 'stages/mikes-room/bed', 0, 0);
	scaleObject('bed', 0.9, 0.9);
	addLuaSprite('bed', false);

	makeLuaSprite('redoverlay', 'stages/cheated/redoverlay', 0, 0);
	scaleObject('redoverlay', 1,1);
	addLuaSprite('redoverlay', false);
	setObjectCamera('redoverlay', 'hud')
	
	setProperty('back.alpha',0) 
	setProperty('bed.alpha',0) 
	setProperty('redoverlay.alpha',0) 

	setObjectOrder('back', 1);
	setObjectOrder('dadGroup', 2);
	setObjectOrder('bed', 3);
	setObjectOrder('boyfriendGroup', 4);
	setObjectOrder('redoverlay', 5)
	
	setProperty('skipCountdown', true);
	setProperty('camHUD.alpha',0) 
	setProperty('camGame.alpha',0) 
	setProperty('gfGroup.alpha',0)
end

function onCreatePost()
setProperty('boyfriend.visible',false)
end

function onStepHit()
if curStep == 5 then
doTweenZoom('Change Camera Zoom', 'camGame',1.6, 5, 'linear')
doTweenAlpha('holaGame', 'camGame', 1, 2.5,'linear')
end
if curStep == 128 then
doTweenZoom('Change Camera Zoom', 'camGame',1.4, 0.5, 'quadOut')
doTweenAlpha('holaHUD', 'camHUD', 1, 0.5,'linear')
    setProperty('back.alpha',1) 
	setProperty('bed.alpha',1) 
setProperty('boyfriend.visible',true)
end
if curStep == 400 then
removeLuaSprite('back',true)
removeLuaSprite('bed',true)
doTweenY('boyfriend1', 'boyfriend', 250, 4,'quadOut')      
doTweenY('dad1', 'dad', 40, 4,'quadOut')    
              end
if curStep == 904 then
     doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.01)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.01)
	doTweenAlpha('AlphaTween3', 'scoreforever', 0, 0.01)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.01)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.01)
	doTweenAlpha('AlphaTween6', 'NameSong', 0, 0.01)
	doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0, 0.01)
     setProperty('camGame.alpha',0) 
end
if curStep == 912 then
      setProperty('redoverlay.alpha',1) 
     doTweenAlpha('AlphaTween1', 'healthBarBG', 0.7, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 0.7, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreforever', 0.5, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.2)
	doTweenAlpha('AlphaTween6', 'NameSong', 0.5, 0.2)
	doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0.5, 0.2)
	doTweenAlpha('AlphaTween10', 'dad', 0.45, 0.2)
	doTweenAlpha('AlphaTween11', 'boyfriendGroup', 0.45, 0.2)
     setProperty('gfGroup.alpha',1)
     setProperty('camGame.alpha',1) 
end
if curStep == 1040 then
     doTweenAlpha('adiosRed', 'redoverlay', 0, 0.5)
end
if curStep == 1440 then
cameraShake('hud', 0.008, 0.4)
cameraShake('game', 0.008, 0.4)
playSound('DissensionDeath', 1)
triggerEvent('Play Animation','singDOWN', 'bf')
setProperty('redoverlay.alpha',1) 
doTweenY('boyfriend1', 'boyfriend', -750, 2.5,'quadInOut')      
setProperty('health', 0.01);
end
if curStep == 1446 then
doTweenAlpha('adiosRed', 'redoverlay', 0, 0.5)
end
if curStep == 1470 then
setProperty('camGame.alpha',0) 
setProperty('camHUD.alpha',0) 
end
end

function onUpdatePost()
if curStep < 912 then
    setTextString("botplayTxt","Botplay\nporque deberia jugar limpio?")
    else
    setTextString("botplayTxt","Botplay\ndéjà vu")
    end
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then--Detalles pa ,Detalles
setPropertyFromGroup('opponentStrums',0,'alpha',0.7)
	setPropertyFromGroup('opponentStrums',1,'alpha',0.7)
	setPropertyFromGroup('opponentStrums',2,'alpha',0.7)
	setPropertyFromGroup('opponentStrums',3,'alpha',0.7)
    setPropertyFromGroup('playerStrums',0,'alpha',0.7)
	setPropertyFromGroup('playerStrums',1,'alpha',0.7)
	setPropertyFromGroup('playerStrums',2,'alpha',0.7)
	setPropertyFromGroup('playerStrums',3,'alpha',0.7)
	end
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
    setPropertyFromGroup('opponentStrums',0,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',1,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',2,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',3,'alpha',0.5)
	setPropertyFromGroup('playerStrums',0,'alpha',0.7)
	setPropertyFromGroup('playerStrums',1,'alpha',0.7)
	setPropertyFromGroup('playerStrums',2,'alpha',0.7)
	setPropertyFromGroup('playerStrums',3,'alpha',0.7)
end
 end