function onCreate()
    precacheImage('stages/alley/White_Hand')
	makeLuaSprite('mid', 'stages/alley/MIDGROUND', -800, -300);
	addLuaSprite('mid', false);
	setScrollFactor('mid',0.9,0.9);
	scaleObject('mid',0.7,0.7);
	
	makeLuaSprite('fore', 'stages/alley/FOREGROUND TREE', -1030, -300)
	setScrollFactor('fore',1.2, 1.2);
	scaleObject('fore',0.7,0.7);
	addLuaSprite('fore', false);
	
	makeAnimatedLuaSprite('burriedHand', 'stages/alley/White_Hand', 820, 280);
	addAnimationByPrefix('burriedHand', 'idle', 'White Hand FInished', 24, false);
	objectPlayAnimation('burriedHand', 'idle',false);
	addLuaSprite('burriedHand', false);
	setProperty('burriedHand.alpha', 0);
	scaleObject('burriedHand',0.7,0.7);

if difficultyName == 'Hard' then
	makeAnimatedLuaSprite('spacebar', 'Extras', 530, 350);
	addAnimationByPrefix('spacebar', 'aveces', 'Spacebar', 24, false);
	setObjectCamera('spacebar', 'camHUD');
	addLuaSprite('spacebar', true);
	setProperty('spacebar.alpha', 0);
	end
	
	setObjectOrder('mid', 1);
	setObjectOrder('dadGroup', 2);
	setObjectOrder('fore', 3);
	
	setScrollFactor('dadGroup',0.9,0.9);
	setScrollFactor('boyfriendGroup',0.9,0.9);
end

function onUpdatePost()
    setTextString("botplayTxt","Botplay\nPed*fil* >:(")
    setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
    setPropertyFromGroup('playerStrums',0,'alpha',0.75)
	setPropertyFromGroup('playerStrums',1,'alpha',0.75)
	setPropertyFromGroup('playerStrums',2,'alpha',0.75)
	setPropertyFromGroup('playerStrums',3,'alpha',0.75)
 end

function onBeatHit()
	if curBeat % 2 == 0 then 
		objectPlayAnimation('spacebar', 'aveces');
	end
end

function onStepHit()
if difficultyName == 'Hard' then
if curStep == 6 then
    doTweenAlpha('holaSpacebar', 'spacebar', 1, 1)
end
if curStep == 56 then
    doTweenAlpha('adiosSpacebar', 'spacebar', 0, 1)
end
end
if curStep == 496 then
setProperty('burriedHand.alpha', 1);
objectPlayAnimation('burriedHand', 'idle',false);
end
if curStep == 505 then
removeLuaSprite('burriedHand', true);
end
end