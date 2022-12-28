function onCreate()
	makeLuaSprite('glitch_city', 'stages/glitchy/glitch_city', -1200, -480);
	scaleObject('glitch_city', 0.7,0.7);
    addLuaSprite('glitch_city', false);
    setScrollFactor('glitch_city',0.80, 0.80);
    
    makeLuaSprite('tiles', 'stages/glitchy/tiles', -1200, -480);
	scaleObject('tiles',0.7,0.7);
    addLuaSprite('tiles', false);
    setScrollFactor('tiles',0.9, 0.9);
    
     if not lowQuality then
    makeLuaSprite('haze', 'stages/glitchy/haze', -1200, -480);
	scaleObject('haze',0.7,0.7);
    addLuaSprite('haze', false);
    setScrollFactor('haze',0.9, 0.9);
    end
    
    makeAnimatedLuaSprite('myP*ssyxd', 'characters/red/they_took_everything_from_me', 600, -35); 
    addLuaSprite('myP*ssyxd', false)
    scaleObject('myP*ssyxd', 2,2);
     setProperty('myP*ssyxd.alpha', 0);

    setProperty('camHUD.alpha', 0);
    setProperty('skipCountdown', true);
end

function onCreatePost()
setTextString("botplayTxt", "Botplay\nMy P*ssy")
setProperty('iconP2.y', getProperty('iconP2.y') - 15);   
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenX('bfTween1', 4, 90, 0.01, 'linear');
 noteTweenX('bfTween2', 5, 205, 0.01, 'linear'); 
noteTweenX('bfTween3', 6, 315, 0.01, 'linear');
 noteTweenX('bfTween4', 7, 425, 0.01, 'linear'); 
end
end

function onCreatePost()
    setTextString("botplayTxt", "Botplay\nporque no te desecharon")
    setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
    setPropertyFromGroup('playerStrums',0,'alpha',0.75)
	setPropertyFromGroup('playerStrums',1,'alpha',0.75)
	setPropertyFromGroup('playerStrums',2,'alpha',0.75)
	setPropertyFromGroup('playerStrums',3,'alpha',0.75)
 end

function onStepHit()--Eventos por Nickobelit (Si los usas dejas créditos)
if curStep == 234 then
setProperty('camGame.alpha', 0);
end
if curStep == 255 then
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.2)
    doTweenAlpha('holaJuego', 'camGame', 1, 0.2)
end
if curStep == 1872 then
    addAnimationByPrefix('myP*ssyxd', 'hablap', 'GlitchySpeak', 24, false); --No se porque se buguea pero solo así funciona xd
    objectPlayAnimation('myP*ssyxd','hablap',false)
    doTweenAlpha('AlphaTween', 'myP*ssyxd', 1,4.5)
    doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreforever', 0, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.2)
	doTweenAlpha('AlphaTween6', 'NameSong', 0, 0.2)
	doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0, 0.2)
	doTweenAlpha('AlphaTween8', 'camGame', 0, 0.2)
	doTweenAlpha('AlphaTween9', 'dadGroup', 0, 0.2)
	doTweenAlpha('AlphaTween10', 'boyfriendGroup', 0, 0.2)
	doTweenAlpha('AlphaTween11', 'gfGroup', 0, 0.2)
	noteTweenAlpha("notaplayer1", 4, 0, 3, "linear")
	noteTweenAlpha("notaplayer2", 5, 0, 3, "linear")
	noteTweenAlpha("notaplayer3", 6, 0, 3, "linear")
	noteTweenAlpha("notaplayer4", 7, 0, 3, "linear")
end
if curStep == 1880 then
doTweenAlpha('AlphaTween2', 'camGame', 1, 3)
doTweenX('hablaRed','myP*ssyxd',520,9, 'quadInOut');
end
if curStep == 2000 then
    removeLuaSprite('myP*ssyxd',true) 
    setProperty('camHUD.alpha', 0);
    setProperty('camGame.alpha', 0);
end
if curStep == 2004 then
    doTweenAlpha('AlphaTween1', 'healthBarBG', 0.7, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 0.7, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreforever', 0.5, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.2)
	doTweenAlpha('AlphaTween6', 'NameSong', 0.5, 0.2)
	doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0.5, 0.2)
	doTweenAlpha('AlphaTween8', 'camHUD', 1, 0.2)
	doTweenAlpha('AlphaTween9', 'camGame', 1, 0.2)
	doTweenAlpha('AlphaTween10', 'dad', 1, 0.2)
	doTweenAlpha('AlphaTween11', 'boyfriendGroup', 1, 0.2)
	noteTweenAlpha("notaplayer1", 4, 0.8, 0.2, "linear")
	noteTweenAlpha("notaplayer2", 5, 0.8, 0.2, "linear")
	noteTweenAlpha("notaplayer3", 6, 0.8, 0.2, "linear")
	noteTweenAlpha("notaplayer4", 7, 0.8, 0.2, "linear")
end
end