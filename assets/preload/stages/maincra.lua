function onCreate()
   makeLuaSprite('bg', 'shitpost/images/unknown', -430, -230)
	scaleObject('bg', 1.5, 1.5)
	addLuaSprite('bg', false)
	setProperty('camHUD.alpha', 0)
	setProperty('skipCountdown', true);
end

function onCreatePost()
setProperty('dad.visible', false);
if getPropertyFromClass('ClientPrefs', 'downScroll') then
        setPropertyFromClass("ClientPrefs", "downScroll", false)
        end
end

function onUpdatePost()
setTextString("botplayTxt", "Botplay\nno tienes manos o que? xd")
setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
	if getProperty('health') <= 0.2 then
        setProperty('health',getProperty('health') + 2)
        debugPrint('No Puedes Perder xddd')
      end     
end

function onStepHit()
    if curStep == 263 then
    setProperty('dad.visible', true);
    end
    if curStep == 272 then
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.3,cubeInOut)
    end
	if curStep == 774 then
	noteTweenX("noteMove1", 4, 200, 0.01, cubeInOut)
	noteTweenX("noteMove2", 5, 400, 0.01, cubeInOut)
	noteTweenX("noteMove3", 6, 600, 0.01, cubeInOut)
	noteTweenX("noteMove4", 7, 800, 0.01, cubeInOut)
	noteTweenY("noteMove5", 4, 110, 0.01, cubeInOut)
	noteTweenY("noteMove6", 5, 200, 0.01, cubeInOut)
	noteTweenY("noteMove7", 6, 205, 0.01, cubeInOut)
	noteTweenY("noteMove8", 7, 320, 0.01, cubeInOut)
    end
    if curStep == 776 then
    noteTweenX("noteMove1", 4, 190, 0.01, cubeInOut)
	noteTweenX("noteMove2", 5, 510, 0.01, cubeInOut)
	noteTweenX("noteMove3", 6, 590, 0.01, cubeInOut)
	noteTweenX("noteMove4", 7, 890, 0.01, cubeInOut)
	noteTweenY("noteMove5", 4, 210, 0.01, cubeInOut)
	noteTweenY("noteMove6", 5, 500, 0.01, cubeInOut)
	noteTweenY("noteMove7", 6, 305, 0.01, cubeInOut)
	noteTweenY("noteMove8", 7, 420, 0.01, cubeInOut)
	end
	if curStep == 778 then
	noteTweenX("noteMove1", 4, 200, 0.01, cubeInOut)
	noteTweenX("noteMove2", 5, 400, 0.01, cubeInOut)
	noteTweenX("noteMove3", 6, 600, 0.01, cubeInOut)
	noteTweenX("noteMove4", 7, 800, 0.01, cubeInOut)
	noteTweenY("noteMove5", 4, 110, 0.01, cubeInOut)
	noteTweenY("noteMove6", 5, 200, 0.01, cubeInOut)
	noteTweenY("noteMove7", 6, 205, 0.01, cubeInOut)
	noteTweenY("noteMove8", 7, 320, 0.01, cubeInOut)
	end
	if curStep == 780 then
    noteTweenX("noteMove1", 4, 150, 0.01, cubeInOut)
	noteTweenX("noteMove2", 5, 270, 0.01, cubeInOut)
	noteTweenX("noteMove3", 6, 330, 0.01, cubeInOut)
	noteTweenX("noteMove4", 7, 460, 0.01, cubeInOut)
	noteTweenY("noteMove5", 4, 120, 0.01, cubeInOut)
	noteTweenY("noteMove6", 5, 124, 0.01, cubeInOut)
	noteTweenY("noteMove7", 6, 126, 0.01, cubeInOut)
	noteTweenY("noteMove8", 7, 128, 0.01, cubeInOut)
	end
	 if curStep == 782 then
	noteTweenX("noteMove1", 4, 400, 0.01, cubeInOut)
	noteTweenX("noteMove2", 5, 600, 0.01, cubeInOut)
	noteTweenX("noteMove3", 6, 800, 0.01, cubeInOut)
	noteTweenX("noteMove4", 7, 1000, 0.01, cubeInOut)
	noteTweenY("noteMove5", 4,150, 0.01, cubeInOut)
	noteTweenY("noteMove6", 5, 140, 0.01, cubeInOut)
	noteTweenY("noteMove7", 6, 145, 0.01, cubeInOut)
	noteTweenY("noteMove8", 7, 160, 0.01, cubeInOut)
	end
end