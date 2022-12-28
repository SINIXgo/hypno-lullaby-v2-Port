local go = false
local SineElap = 0
local displacement = 0

--Giro de NoteDead por Axor the Axolotl
function onCreate()
    makeAnimatedLuaSprite('celebiDead', 'characters/gold/Celebi_Assets', -300, 120); --600,100
    addAnimationByPrefix('celebiDead', 'idle', 'Celebi Idle', 24, true);
    addAnimationByPrefix('celebiDead', 'spawn', 'Celebi Spawn Full', 24, false);
    addAnimationByPrefix('celebiDead', 'bye', 'Celebi Dead Full', 24, false);
    objectPlayAnimation('celebiDead','idle',false)
    addLuaSprite('celebiDead', false)
    scaleObject('celebiDead', 1,1);
    setProperty('celebiDead.alpha', 0);
   
   for i=1,3 do
    makeAnimatedLuaSprite('noteDead'..i, 'characters/gold/Note_asset', 0,0); ---200,220
    addAnimationByPrefix('noteDead'..i, 'idle', 'Note Full', 24, false);
    objectPlayAnimation('noteDead'..i,'idle',false)
    addLuaSprite('noteDead'..i, false)
    scaleObject('noteDead'..i,1,1);
    setProperty('noteDead'..i..'.alpha', 0);
    end
    
   makeLuaSprite('lightblueBar','', 901.3, 644.7);--Esto es la mecánica
   makeGraphic('lightblueBar','350','15','E2E2E2')
   scaleObject('lightblueBar', 0.1,0.715)
   setProperty('lightblueBar.alpha',0)
   setObjectCamera("lightblueBar", 'hud')
   addLuaSprite('lightblueBar', true);
 
    setProperty('skipCountdown', true);
end

function onCreatePost()
setProperty('dad.visible', false);
setProperty('iconP2.y', getProperty('iconP2.y') - 15);   

setObjectOrder('iconP2', false)
setObjectOrder('iconP1', false)
setObjectOrder('lightblueBar', false)
setObjectOrder('healthBar', false)
setObjectOrder('healthBarBG', false)
end

function onStepHit()--Eventos por Nickobelit y Xendrack
if curStep > 368 then-- C Mecanica p 
     if getProperty('health') < 0.4 then
        setProperty('health',getProperty('health') - 16)
      end
end
if curStep > 816 then    
     if getProperty('health') < 0.7 then
        setProperty('health',getProperty('health') - 41)
    end
end
if curStep > 1264 then    
     if getProperty('health') < 1 then
        setProperty('health',getProperty('health') - 64)
    end
end
if curStep >= 0 then
setProperty('dad.visible', true);
end
     if curStep == 128 then
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.2,cubeInOut)
	end    
	if curStep == 368 then    
	doTweenX('lightblueX','lightblueBar.scale',getProperty('lightblueBar.scale.x')-0.4,1,'expoOut')
    doTweenX('lightblueX1','lightblueBar',866.3,1,'expoOut')
    doTweenAlpha('holalightblueBar', 'lightblueBar', 1, 0.5,cubeInOut)
    setProperty('celebiDead.alpha', 1);
    for i=1,3 do    
    go = true
    addLuaSprite('noteDead'..i, true)
    doTweenAlpha('holaNote'..i, 'noteDead'..i, 1, 0.2,cubeInOut)
    end
    objectPlayAnimation('celebiDead','spawn',false)
    objectPlayAnimation('noteDead','idle',false)
    runTimer('idleCelebi',0.8)  
    runTimer('chauCelebi',1.3)  
    end
    if curStep == 816 then
     doTweenX('lightblueX','lightblueBar.scale',getProperty('lightblueBar.scale.x')-0.3,1,'expoOut')
    doTweenX('lightblueX1','lightblueBar',815.3,1,'expoOut')
    for i=1,3 do    
    go = true
    addLuaSprite('noteDead'..i, true)
    doTweenAlpha('holaNote'..i, 'noteDead'..i, 1, 0.2,cubeInOut)
    end
    objectPlayAnimation('celebiDead','spawn',false)
    objectPlayAnimation('noteDead','idle',false)
    runTimer('chauCelebi',1.3)         
    runTimer('idleCelebi',0.8)  
    end
    if curStep == 1264 then
    doTweenX('lightblueX','lightblueBar.scale',getProperty('lightblueBar.scale.x')-0.26,1,'expoOut')
    doTweenX('lightblueX1','lightblueBar',768.3,1,'expoOut')
    for i=1,3 do    
    go = true
    addLuaSprite('noteDead'..i, true)
    doTweenAlpha('holaNote'..i, 'noteDead'..i, 1, 0.2,cubeInOut)
    end
    objectPlayAnimation('celebiDead','spawn',false)
    objectPlayAnimation('noteDead','idle',false)
    runTimer('chauCelebi',1.3)   
    runTimer('idleCelebi',0.8)        
    end
    if curStep == 1552 then
    doTweenAlpha('adiosHUD', 'camHUD', 0, 0.3,cubeInOut)
	end
    if curStep == 1664 then
    doTweenZoom('alejateCam','camGame',0.65,3,'sineInOut')
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.3,cubeInOut)
    end
end

--Codigo Base de Laztrix peeee
local allowCountdown = false
local stops = 0;
function onStartCountdown()
if not allowCountdown and not seenCutscene then    
    setProperty('inCutscene', true);    
    if stops == 0 then
            setProperty('camFollowPos.x',330)
            setProperty('camFollowPos.y',400)             
        setProperty('camHUD.alpha',0) 
        runTimer('startC',3.7)                
    end
    if stops == 1 then    
    runTimer('startDialogue', 3.7);
    runTimer('Dead',0.1)
    allowCountdown = true;    
    end
    stops = stops + 1
    return Function_Stop;
end
return Function_Continue;
end

function onUpdate(elapsed)
    WhenEstasMuerto = math.random(1,7)    
	end

function onUpdatePost(elapsed)
if difficultyName == 'Pussy' then
setTextString("botplayTxt", "Botplay\nWhen Estas Muerto:\nI'm Dead xd")
end
if difficultyName == 'Hard' then
setTextString("botplayTxt", "Botplay\nNecesitas mas tiempo para escribir??")
end
    setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
	setPropertyFromGroup('playerStrums',0,'alpha',0.7)
	setPropertyFromGroup('playerStrums',1,'alpha',0.7)
	setPropertyFromGroup('playerStrums',2,'alpha',0.7)
	setPropertyFromGroup('playerStrums',3,'alpha',0.7)

--This Code of Axor the Axolotl
       SineElap = SineElap + (elapsed * 3)
		if go == true then
			displacement = displacement + 50
		else
			displacement = 0
		end
		for i=1,3 do
			setProperty('noteDead'..i..'.x', displacement*math.cos(SineElap+(1.1*i))/20+(getProperty('celebiDead.x') + getProperty('celebiDead.width') / 2)-45)
			setProperty('noteDead'..i..'.y', displacement*math.sin(SineElap+(1.1*i))/20+(getProperty('celebiDead.y')+50))
		end
end
--End of Axor Code

    function onTimerCompleted(tag)
    if tag == 'idleCelebi' then
		objectPlayAnimation('celebiDead','idle',false)
	end
    if tag == 'ParaMovimiento' then
		go = false
	end
    if tag == 'startDialogue' then
		startDialogue('dialogue');
	end
	if tag == 'startC' then
		startCountdown();
	end
       if tag == 'Dead' then
    if WhenEstasMuerto == 1 then
               playSound('ImDead1',1)             
	    end
    if WhenEstasMuerto == 2 then
               playSound('ImDead2',1)
		end
   if WhenEstasMuerto == 3 then
               playSound('ImDead3',1)              
		end
   if WhenEstasMuerto == 4 then
               playSound('ImDead4',1)               
		end
   if WhenEstasMuerto == 5 then
               playSound('ImDead5',1)               
	    end
   if WhenEstasMuerto == 6 then
               playSound('ImDead6',1)              
		end
   if WhenEstasMuerto == 7 then
               playSound('ImDead7',1)               
		end
end
for i=0,3 do
if tag == 'chauCelebi' then
        objectPlayAnimation('celebiDead','bye',false)
        runTimer('ParaMovimiento',1)     
		doTweenAlpha('adiosNote'..i, 'noteDead'..i, 0, stepCrochet * 8 / 1000)
		local function onTweenCompleted(tag)
		if tag == 'adiosNote'..i then
        removeLuaSprite('noteDead'..i)
            end
          end
		end
	end
end

