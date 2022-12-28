--BG por B_Fezz
function onCreate()
    makeAnimatedLuaSprite('bg', 'stages/cheated/bgCheated', -460, 50);
    addAnimationByPrefix('bg','idle','idle',2,true)
    objectPlayAnimation('bg','idle',false)
	scaleObject('bg', 1,1);
	addLuaSprite('bg', false);
	setProperty('bg.alpha',0) 
	
	makeAnimatedLuaSprite('bgStrangled', 'stages/cheated/bgCheatedStrangled', 50, 520);
    addAnimationByPrefix('bgStrangled','idle','idle',2,true)
    objectPlayAnimation('bgStrangled','idle',false)
	scaleObject('bgStrangled', 0.8,0.8);
	addLuaSprite('bgStrangled', false);
	setProperty('bgStrangled.alpha',0) 
	
	makeLuaSprite('bgFrontSteven', 'stages/cheated/bgFrontSteven', -460, 50);
	scaleObject('bgFrontSteven', 1,1);
	addLuaSprite('bgFrontSteven', false);
	setProperty('bgFrontSteven.alpha',0) 

	makeLuaSprite('redoverlay', 'stages/cheated/redoverlay', 0, 0);
	scaleObject('redoverlay', 1,1);
	addLuaSprite('redoverlay', false);
	setObjectCamera('redoverlay', 'hud')
	setProperty('redoverlay.alpha',0) 
	
	setObjectOrder('bg', 1);
	setObjectOrder('bgStrangled', 2);
    setObjectOrder('dadGroup',3)
    setObjectOrder('bgFrontSteven', 4);
    setObjectOrder('boyfriendGroup', 5);
    setObjectOrder('redoverlay', 6);
    
    setProperty('skipCountdown',true);   
    end

function onCreatePost()
setProperty('iconP2.y', getProperty('iconP2.y') - 10);   
setProperty('boyfriend.visible',false) 
end

function onStepHit()
if curStep == 249 then
doTweenAlpha('adiosGame', 'camGame', 0, 0.5,'linear')
end
if curStep == 256 then
setProperty('boyfriend.visible',true) 
doTweenAlpha('holaGame', 'camGame', 1, 0.2,'linear')
doTweenAlpha('holaBG', 'bg', 1, 0.2,'linear')
doTweenAlpha('holaBGFrontSteven', 'bgFrontSteven', 1, 0.2,'linear')
end
if getPropertyFromClass('ClientPrefs', 'downScroll') == false then--Detalles pa ,Detalles
if curStep == 537 then
	noteTweenY("noteMove09", 0, 150, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 150, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 150, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 150, 0.01, cubeInOut)
	end
if curStep == 539 then
	noteTweenY("noteMove09", 0, 300, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 300, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 300, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 300, 0.01, cubeInOut)
	end
if curStep == 541 then
	noteTweenY("noteMove09", 0, 450, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 450, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 450, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 450, 0.01, cubeInOut)
	end
if curStep == 543 then
	noteTweenY("noteMove09", 0, 600, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 600, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 600, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 600, 0.01, cubeInOut)
	end
if curStep == 2041 then
	noteTweenY("noteMove09", 0, 450, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 450, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 450, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 450, 0.01, cubeInOut)
	end
if curStep == 2043 then
	noteTweenY("noteMove09", 0, 300, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 300, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 300, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 300, 0.01, cubeInOut)
	end
if curStep == 2045 then
	noteTweenY("noteMove09", 0, 150, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 150, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 150, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 150, 0.01, cubeInOut)
	end
if curStep == 2047 then
	noteTweenY("noteMove09", 0, 50, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 50, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 50, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 50, 0.01, cubeInOut)
	end
end
if getPropertyFromClass('ClientPrefs', 'downScroll') == true then--Detalles pa ,Detalles
if curStep == 537 then
	noteTweenY("noteMove09", 0, 450, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 450, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 450, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 450, 0.01, cubeInOut)
	end
if curStep == 539 then
	noteTweenY("noteMove09", 0, 300, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 300, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 300, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 300, 0.01, cubeInOut)
	end
if curStep == 541 then
	noteTweenY("noteMove09", 0, 150, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 150, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 150, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 150, 0.01, cubeInOut)
	end
if curStep == 543 then
	noteTweenY("noteMove09", 0, 30, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 30, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 30, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 30, 0.01, cubeInOut)
	end
if curStep == 2041 then
	noteTweenY("noteMove09", 0, 150, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 150, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 150, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 150, 0.01, cubeInOut)
	end
if curStep == 2043 then
	noteTweenY("noteMove09", 0, 300, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 300, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 300, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 300, 0.01, cubeInOut)
	end
if curStep == 2045 then
	noteTweenY("noteMove09", 0, 450, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 450, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 450, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 450, 0.01, cubeInOut)
	end
if curStep == 2047 then
	noteTweenY("noteMove09", 0, 570, 0.01, cubeInOut)
	noteTweenY("noteMove10", 1, 570, 0.01, cubeInOut)
	noteTweenY("noteMove11", 2, 570, 0.01, cubeInOut)
	noteTweenY("noteMove12", 3, 570, 0.01, cubeInOut)
	end
end
if curStep == 928 then
doTweenColor('grisBG','bg','636363',0.5)
doTweenColor('grisFront','bgFrontSteven','636363',0.5)
doTweenColor('azulBF','boyfriend','00aae4',0.5)
doTweenColor('rojoDAD','dad','FF0000',0.5)
end
if curStep == 1296 then
doTweenAlpha('adiosGame', 'camGame', 0, 1,'linear')
end
if curStep == 1310 then
setProperty('boyfriend.visible',false) 
setProperty('bg.visible',false) 
setProperty('bgFrontSteven.visible',false) 
end
if curStep == 1312 then
doTweenAlpha('holaGame', 'camGame', 1, 0.2,'linear')
doTweenAlpha('holaStrangledBG', 'bgStrangled', 1, 0.2,'linear')
doTweenColor('normalDAD','dad','FFFFFF',0.2)
end
if curStep == 1816 then
doTweenAlpha('adiosGame', 'camGame', 0, 0.3,'linear')
end
if curStep == 1824 then
doTweenAlpha('holaGame', 'camGame', 1, 0.2,'linear')
doTweenColor('grisBG','bgStrangled','636363',0.2)
doTweenColor('rojoDAD','dad','FF0000',0.2)
end
if curStep == 2080 then
doTweenColor('normalBG','bgStrangled','FFFFFF',0.2)
doTweenColor('normalDAD','dad','FFFFFF',0.2)
end
if curStep == 2218 then
doTweenAlpha('adiosGame', 'camGame', 0, 1.7,'linear')
end
if curStep == 2238 then
playSound('DissensionDeath', 0.5)
end
if curStep == 2240 then
setProperty('health', 0.01);
setProperty('redoverlay.alpha',1)
runTimer('adiosRed',0.4)
end
end

function onUpdate(elapsed)--C Mecánica
if difficultyName == 'Hard' then
if curStep >= 1824 then
health = getProperty('health')
if getProperty('health') >= 0.395 then
setProperty('health', health - 0.0020 * ((elapsed) * 120));
end
end
end
if curStep >= 1824 and curStep < 2240 then
cameraShake('hud', 0.0035, 0.4)
cameraShake('game', 0.0035, 0.4)
end
end

function opponentNoteHit()
if difficultyName == 'Hard' then
    if curStep >= 1312 and curStep < 1824 then
    health = getProperty('health')
    if getProperty('health') > 0.2 then
        setProperty('health', health- 0.035);
    end
end
end
end

function goodNoteHit()--Con esto se compensa la mecánica (Además que noté que así es xd)
if difficultyName == 'Hard' then
health = getProperty('health')
setProperty('health', health + 0.03);
end
end

function onUpdatePost()    
    if curBeat >= 328 then
    setTextString("botplayTxt","Cheated")
    else
    setTextString("botplayTxt","Cheater")
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

function onBeatHit()
        if curBeat >= 328 and curBeat <= 452 then
		if curBeat % 4== 0 then
			doTweenAlpha('redAlpha', 'redoverlay', 0.8, 0.2, 'linear')
			runTimer('adiosRed',0.8)
			end
end
        if curBeat >= 456 and curBeat <= 520 then
        if curBeat % 4== 0 then
			doTweenAlpha('redAlpha', 'redoverlay', 1, 0.2, 'linear')
			runTimer('adiosRed',0.8)
			end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'adiosRed' then
     doTweenAlpha('redAlpha2', 'redoverlay', 0.1, 0.2, 'linear');
     end
end