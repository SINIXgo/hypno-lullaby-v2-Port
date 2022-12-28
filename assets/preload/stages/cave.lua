function onCreate()
	makeLuaSprite('cave', 'stages/cave/cave', -785, -345);
	scaleObject('cave', 1,1);
    addLuaSprite('cave', false);
    
    makeLuaSprite('bf', 'stages/cave/dead_ass_bitch_LMAOOOO', -135, 923);
	scaleObject('bf', 0.5,0.5);
    addLuaSprite('bf', false);
    setProperty('bf.alpha', 0);
    setProperty('skipCountdown', true);
end

function onUpdatePost()--El que entienda este code,le sabe xd
setTextString("botplayTxt", "Botplay\nyo soy la causa perdida")
if curStep >= 310 then
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
   noteTweenX('bfTween1', 4, 90, 0.01, 'linear');
   noteTweenX('bfTween2', 5, 205, 0.01, 'linear'); 
   noteTweenX('bfTween3', 6, 315, 0.01, 'linear');
   noteTweenX('bfTween4', 7, 425, 0.01, 'linear'); 
   noteTweenX('dadTween1', 0, 730, 0.01, 'linear'); 
   noteTweenX('dadTween2', 1, 845, 0.01, 'linear');
   noteTweenX('dadTween3', 2, 955, 0.01, 'linear')
   noteTweenX('dadTween4', 3, 1065, 0.01, 'linear');
end
end
    setPropertyFromGroup('playerStrums',0,'alpha',0.85)
	setPropertyFromGroup('playerStrums',1,'alpha',0.85)
	setPropertyFromGroup('playerStrums',2,'alpha',0.85)
	setPropertyFromGroup('playerStrums',3,'alpha',0.85)
	
	if curStep >= 310 then
	setPropertyFromGroup('opponentStrums',0,'alpha',0.85)
	setPropertyFromGroup('opponentStrums',1,'alpha',0.85)
	setPropertyFromGroup('opponentStrums',2,'alpha',0.85)
	setPropertyFromGroup('opponentStrums',3,'alpha',0.85)
	else
    setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
 end
if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
setPropertyFromGroup('playerStrums',0,'alpha',0.85)
	setPropertyFromGroup('playerStrums',1,'alpha',0.85)
	setPropertyFromGroup('playerStrums',2,'alpha',0.85)
	setPropertyFromGroup('playerStrums',3,'alpha',0.85)
	if curStep >= 310 then
	setPropertyFromGroup('opponentStrums',0,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',1,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',2,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',3,'alpha',0.5)
	else
    setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
 end
end
end

function onStepHit()--Eventos por Nickobelit (Si los usas dejas créditos)
if curStep == 304 then
    doTweenAlpha('adiosHUD', 'camHUD', 0, 0.3)
end
if curStep == 320 then
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.3)
end

if curStep == 351 then
    setProperty('bf.alpha', 1);
end
end
