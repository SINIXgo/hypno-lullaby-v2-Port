function onCreate()
    makeLuaSprite('bg', 'stages/mountain/mountain', -650, -500);
    scaleObject('bg', 1.2,1.2);
    addLuaSprite('bg', false);
    
    makeLuaSprite('white','', 0, 0);
   makeGraphic('white',1280,720,'ffffff')
   setLuaSpriteScrollFactor('white',1,1)
   scaleObject('white', 2,2)
   setProperty('white.alpha',1)
   setObjectCamera("white", 'other')
   addLuaSprite('white', false);
   
   makeLuaSprite('frekachuJumpscare', 'jumpscares/Pikachu', 0, 0);
   scaleObject('frekachuJumpscare', 0.325,0.325);
    addLuaSprite('frekachuJumpscare', true);
    setProperty('frekachuJumpscare.alpha',0)
    setObjectCamera("frekachuJumpscare", 'other')
    
   setProperty('camHUD.alpha',0)
   setProperty('skipCountdown', true);
end 

function onCreatePost()
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenX("noteMove01", 0, 732, 0.1, cubeInOut)
    noteTweenX("noteMove02", 1, 844, 0.1, cubeInOut)
    noteTweenX("noteMove03", 2, 956, 0.1, cubeInOut)
    noteTweenX("noteMove04", 3, 1068, 0.1, cubeInOut)
    noteTweenX("noteMove05", 4, 92, 0.1, cubeInOut)
    noteTweenX("noteMove06", 5, 204, 0.1, cubeInOut)
    noteTweenX("noteMove07", 6, 316, 0.1, cubeInOut)
    noteTweenX("noteMove08", 7, 428, 0.1, cubeInOut)
end
end

function onUpdate()
if curStep >= 1376 then
setProperty('camHUD.alpha',0)
setProperty('camGame.alpha',0)
end
end

function onUpdatePost()
setTextString("botplayTxt", "Botplay\nLos Ports en Lua son God")
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

function onStepHit()
if curStep==16 then
    doTweenAlpha('adiosWhite','white',0,6)
  end

if curStep==63 then
    removeLuaSprite('white',true) 
    doTweenAlpha('holaBoton','BotonPendulo',1,0.2)
    doTweenAlpha('holaHUD','camHUD',1,0.2)
    doTweenAlpha('AlphaTween1', 'healthBarBG', 0.7, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 0.7, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0.5, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.2)
	doTweenAlpha('AlphaTween6', 'NameSong', 0.5, 0.2)
	doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0.5, 0.2)
  end
if curStep==688 then
    doTweenAlpha('adiosHUD','camHUD',0,0.2)    
  end
if curStep==704 then
    doTweenAlpha('holaHUD','camHUD',1,0.2)
    doTweenAlpha('AlphaTween1', 'healthBarBG', 0.7, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 0.7, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0.5, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.2)
	doTweenAlpha('AlphaTween6', 'NameSong', 0.5, 0.2)
	doTweenAlpha('AlphaTween7', 'ForeverMarcadeAgua', 0.5, 0.2)
  end
if curStep > 1452 and curStep < 1479 then
	cameraShake('other', 0.01, 0.8)
	end
if curStep==1453 then
doTweenAlpha('holaPikachu','frekachuJumpscare',1,0.1)
  end
if curStep == 1479 then
setProperty('frekachuJumpscare.alpha',0)
end
end