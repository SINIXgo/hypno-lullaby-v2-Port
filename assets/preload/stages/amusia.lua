function onCreate()
	makeLuaSprite('bg', 'stages/amusia/background', -100, -50);
	setScrollFactor('bg', 0.2, 0.2);
    addLuaSprite('bg', false);
    
	makeLuaSprite('bg2', 'stages/amusia/backgroundfuck', -100, -50);
	setScrollFactor('bg2', 0.2, 0.2);
	addLuaSprite('bg2', false);
	setProperty('bg2.visible', false)
	
	makeLuaSprite('blue1', 'stages/amusia/Purple_place', 200, 0);
	setScrollFactor('blue1', 1.0, 1.0);
	scaleObject('blue1', 0.5, 0.5);
	addLuaSprite('blue1', false);

	makeLuaSprite('blue2', 'stages/amusia/Purple_place2', -400, 150);
	setScrollFactor('blue2', 1.0, 1.0);
	scaleObject('blue2', 0.8, 0.8);
	addLuaSprite('blue2', false)

	makeLuaSprite('black','',-600,-500)
    makeGraphic('black',1280,720,'000000')
	setLuaSpriteScrollFactor('black',1,1)
	scaleObject('black', 5.5, 5.5) 
    addLuaSprite('black', true);
	
	if not lowQuality then
    makeAnimatedLuaSprite('static-overlay', 'stages/amusia/static-overlay', -30, -30);
    addAnimationByPrefix('static-overlay', 'idle', 'static-overlay', 24, true);
    setLuaSpriteScrollFactor('static-overlay', 0.9, 0.9);
    objectPlayAnimation('static-overlay', 'idle', true);
    scaleObject('static-overlay', 2.5,2.5);
    setObjectCamera('static-overlay','hud')
    addLuaSprite('static-overlay', true)
    setProperty('static-overlay.alpha',0)
    
    makeAnimatedLuaSprite('static','stages/amusia/static',-30,-30)
    addAnimationByPrefix('static','static','static',24,true)
    setProperty('static.alpha',0)
    scaleObject('static',1.4,1.4)
    setObjectCamera('static','other')
    addLuaSprite('static', true);
    end

    makeLuaSprite('dadintro', 'stages/amusia/badbunny', 800, 100);
	scaleObject('dadintro', 1,1);
	addLuaSprite('dadintro', true);
	
	makeLuaSprite('bfintro', 'stages/amusia/mylittlepony', -700, -30);
	scaleObject('bfintro', 0.6, 0.6);
	addLuaSprite('bfintro', true);

	setProperty('camHUD.alpha', 0)
	setProperty('skipCountdown', true)
end

function onCreatePost()
setTextString("botplayTxt", "Botplay\nfuiste amuseado")
    for i = 0, getProperty('opponentStrums.length')-1 do
    setPropertyFromGroup('opponentStrums', i, 'texture', 'UI/base/amusia/WigglesNote');
end

for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'UI/base/amusia/WigglesNote');
end
end
end 

function onUpdatePost()
setPropertyFromGroup('opponentStrums',0,'alpha',0.7)
	setPropertyFromGroup('opponentStrums',1,'alpha',0.7)
	setPropertyFromGroup('opponentStrums',2,'alpha',0.7)
	setPropertyFromGroup('opponentStrums',3,'alpha',0.7)
	setPropertyFromGroup('playerStrums',0,'alpha',0.7)
	setPropertyFromGroup('playerStrums',1,'alpha',0.7)
	setPropertyFromGroup('playerStrums',2,'alpha',0.7)
	setPropertyFromGroup('playerStrums',3,'alpha',0.7)
	
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then--Detalles pa ,Detalles
    setPropertyFromGroup('opponentStrums',0,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',1,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',2,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',3,'alpha',0.5)
	setPropertyFromGroup('playerStrums',0,'alpha',0.7)
	setPropertyFromGroup('playerStrums',1,'alpha',0.7)
	setPropertyFromGroup('playerStrums',2,'alpha',0.7)
	setPropertyFromGroup('playerStrums',3,'alpha',0.7)
end
    if curStep > 2064 then
    setProperty('botplayTxt.alpha', 0)
    doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreforever', 0, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.2)
	doTweenAlpha('AlphaTween6', 'NameSong', 0, 0.2)
	doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0, 0.2)
	doTweenAlpha('AlphaTween9', 'animatedicon', 0, 0.2)
	setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
	setPropertyFromGroup('playerStrums',0,'alpha',0)
	setPropertyFromGroup('playerStrums',1,'alpha',0)
	setPropertyFromGroup('playerStrums',2,'alpha',0)
	setPropertyFromGroup('playerStrums',3,'alpha',0)
    end
end