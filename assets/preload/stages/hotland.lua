function onCreate()
    makeLuaSprite('hotland', 'shitpost/images/lukewarm-land', -380, -200);
    scaleObject('hotland', 1.5,1.5);
    addLuaSprite('hotland', false);
    setProperty('skipCountdown', true);
    setProperty('camHUD.alpha', 0);
end

function onUpdatePost()
     setTextString("botplayTxt","Botplay\nÑilfriend Ñullaby")
     setProperty('scoreforever.alpha', 0)
     if getProperty('health') <= 0.2 then
        setProperty('health',getProperty('health') + 2)
        debugPrint('No Puedes Perder xddd')
      end     
     if curStep < 113 then
     setProperty('camFollowPos.x',1600)
     setProperty('camFollowPos.y',575)  
end
     if curStep >= 112 and curStep < 128 then
     setProperty('camFollowPos.x',1350)
     setProperty('camFollowPos.y',600)  
     end
     if curStep > 387 then
     doTweenAlpha('adiosHUD', 'camHUD', 0, 0.3,cubeInOut)
     setProperty('defaultCamZoom',2.2)
     setProperty('camFollowPos.x',1600)
     setProperty('camFollowPos.y',575)  
end
end

function onStepHit()--Eventos por Nickobelit
if curStep == 112 then
     doTweenZoom('alejateCam','camGame',1.4,0.2,'sineInOut')
     setProperty('defaultCamZoom',1.4)
      end
if curStep == 116 then
      doTweenZoom('alejateCam','camGame',1.6,0.2,'sineInOut')
      setProperty('defaultCamZoom',1.6)
      end
if curStep == 120 then
      doTweenZoom('alejateCam','camGame',1.8,0.2,'sineInOut')
      setProperty('defaultCamZoom',1.8)
      end
if curStep == 124 then
      doTweenZoom('alejateCam','camGame',2,0.2,'sineInOut')
      setProperty('defaultCamZoom',2)
      end
if curStep == 128 then
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.3,cubeInOut)
    setProperty('defaultCamZoom',0.8)
end
end

function onEndSong()--No Tocar (Te estoy viendo)
	restartSong(true);
end

function onPause()
	return Function_Stop;
end
