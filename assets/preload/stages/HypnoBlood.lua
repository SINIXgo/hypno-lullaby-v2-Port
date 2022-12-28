function onCreate()
	makeLuaSprite('mid', 'stages/alley/MIDGROUND BLOOD', -800, -300);
	setScrollFactor('mid',0.9,0.9);
	addLuaSprite('mid', false);
	scaleObject('mid',0.7,0.7);
	
	makeLuaSprite('fore', 'stages/alley/FOREGROUND TREE', -1030, -300);
	setScrollFactor('fore',1.2, 1.2);
	scaleObject('fore',0.7,0.7);
	addLuaSprite('fore', false);
	
	setObjectOrder('mid', 1);
	setObjectOrder('dadGroup', 2);
	setObjectOrder('fore', 3);
	
	setScrollFactor('dadGroup',0.9,0.9);
	setScrollFactor('boyfriendGroup',0.9,0.9);
end

function onUpdatePost()
    setTextString("botplayTxt","Botplay\nmiren c m*rio xddd")
    setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
    setPropertyFromGroup('playerStrums',0,'alpha',0.75)
	setPropertyFromGroup('playerStrums',1,'alpha',0.75)
	setPropertyFromGroup('playerStrums',2,'alpha',0.75)
	setPropertyFromGroup('playerStrums',3,'alpha',0.75)
 end