idle= true
function onCreate()--Por Nickobelit
	makeAnimatedLuaSprite('MXMano', 'characters/mx/mxfront',0, 150); 
	addAnimationByPrefix('MXMano', 'idle', 'IdleFront', 24, false); 
    addAnimationByPrefix('MXMano', '0', 'LeftFront', 24, false); 
    addAnimationByPrefix('MXMano', '1', 'DownFront', 24, false); 
    addAnimationByPrefix('MXMano', '2', 'UpFront', 24, false); 
    addAnimationByPrefix('MXMano', '3', 'RightFront', 24, false);
	objectPlayAnimation('MXMano', 'idle');
	addLuaSprite('MXMano', true)
	scaleObject('MXMano', 2,2)
    setProperty('MXMano.alpha', 1);
end

function onCreatePost()
        setProperty('MXMano.offset.x',100)
        setProperty('MXMano.offset.y',-300)
     if difficultyName == 'Hypno' then
    noteTweenX("N", 4, 853, 0.01, "linear")
    noteTweenX("I", 5, 955, 0.01, "linear")
    noteTweenX("C", 6, 1058, 0.01, "linear")
    noteTweenX("K", 7, 1158, 0.01, "linear")
    noteTweenX("O", 0, 2, 0.01, "linear")
    noteTweenX("L", 1, 105, 0.01, "linear")
    noteTweenX("A", 2, 210, 0.01, "linear")
    noteTweenX("S", 3, 312, 0.01, "linear")
end
   if difficultyName == 'Lord-X' then
    noteTweenX("N", 4, 425, 0.01, "linear")
    noteTweenX("I", 5, 530, 0.01, "linear")
    noteTweenX("C", 6, 636, 0.01, "linear")
    noteTweenX("K", 7, 740, 0.01, "linear")
    noteTweenX("O", 0, 2, 0.01, "linear")
    noteTweenX("L", 1, 105, 0.01, "linear")
    noteTweenX("A", 2, 210, 0.01, "linear")
    noteTweenX("S",3, 312, 0.01, "linear")
end
end

function onUpdatePost()--Un sistema que se ocurrió porque su mano volvía a Idle muy lento xd
if idle == false then
if getProperty('dad.animation.curAnim.name') == 'idle' then
objectPlayAnimation('MXMano', 'idle',false);
setProperty('MXMano.offset.x',100)
setProperty('MXMano.offset.y',-300)
end
end
end

function onBeatHit()
if idle == true then
if curBeat % 2 == 0 then
		objectPlayAnimation('MXMano', 'idle',false);
		setProperty('MXMano.offset.x',100)
        setProperty('MXMano.offset.y',-300)
end
end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)--Nickobelit lo hizo :0
idle = false
if noteData == 0 then
			objectPlayAnimation('MXMano','0',true)
                setProperty('MXMano.offset.x',480)
                setProperty('MXMano.offset.y',-420)
		end
		if noteData == 1 then
			objectPlayAnimation('MXMano','1',true)
                setProperty('MXMano.offset.x',100)
                setProperty('MXMano.offset.y',-420)
		end
		if noteData == 2 then
			objectPlayAnimation('MXMano','2',true)
                setProperty('MXMano.offset.x',100)
                setProperty('MXMano.offset.y',-300)
		end
		if noteData == 3 then
			objectPlayAnimation('MXMano','3',true)
                setProperty('MXMano.offset.x',50)
                setProperty('MXMano.offset.y',-420)
		end
runTimer('idleMX', 1)
end

function onCountdownTick(counter)
	if counter % 2 == 0 then
		if idle == true then
			objectPlayAnimation('MXMano', 'idle',false);
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'idleMX' then
idle= true
end
end