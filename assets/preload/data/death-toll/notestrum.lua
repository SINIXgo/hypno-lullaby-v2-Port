--Codigo de Laztrix
--Mejorado por Nickobelit
animationsList = {}

local defaultstrumy
local noteoffset

local isStrummin = true
local defaultNotePos = {};

function onSongStart()
    for i = 0,7 do
        x = getPropertyFromGroup('strumLineNotes', i, 'x')

        y = getPropertyFromGroup('strumLineNotes', i, 'y')

        table.insert(defaultNotePos, {x, y})
    end
end

function makeAnimationList()
	animationsList[0] = 'keyArrow' -- idle
	animationsList[1] = 'keyConfirm' -- key confirmed
	animationsList[2] = 'keyPressed' -- key miss
end

offsets = {};

function makeOffsets(object)
	offsets[0] = {x=20, y=500}
	offsets[1] = {x=61, y=59}
	offsets[2] = {x=34, y=34}
end

function onCreatePost()
     if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then--Detalles pa ,Detalles
	if not downscroll then
		noteoffset = 50
		else
        noteoffset = 570
        notey = 50
	end

	directions = "space"
	makeAnimationList()
	makeOffsets()

		makeAnimatedLuaSprite('strum'..directions, 'UI/base/hellbell/Bronzong_Gong_mechanic', 265,noteoffset)
		addAnimationByPrefix('strum'..directions, 'keyConfirm', 'spacebar confirm', 24, false)
		addAnimationByPrefix('strum'..directions, 'keyPressed', 'spacebar press', 24, false)
		addAnimationByIndices('strum'..directions, 'keyArrow', 'spacebar',"0,1,2,3,4", 24)
		setObjectCamera('strum'..directions, 'camHUD')
		scaleObject('strumspace',0.75,0.75)
		addLuaSprite('strum'..directions)
		playAnimation('strum'..directions, 0, true)	
		end
		
		if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then--Detalles pa ,Detalles
	if not downscroll then
		noteoffset = 50
		else
        noteoffset = 570
        notey = 50
	end

	directions = "space"
	makeAnimationList()
	makeOffsets()

		makeAnimatedLuaSprite('strum'..directions, 'UI/base/hellbell/Bronzong_Gong_mechanic', 425,noteoffset)
		addAnimationByPrefix('strum'..directions, 'keyConfirm', 'spacebar confirm', 24, false)
		addAnimationByPrefix('strum'..directions, 'keyPressed', 'spacebar press', 24, false)
		addAnimationByIndices('strum'..directions, 'keyArrow', 'spacebar',"0,1,2,3,4", 24)
		setObjectCamera('strum'..directions, 'camHUD')
		scaleObject('strumspace',0.75,0.75)
		addLuaSprite('strum'..directions)
		playAnimation('strum'..directions, 0, true)	
end
end

function playAnimation(character, animId, forced) -- thank you shadowmario :evil:
	-- 0 = keyArrow
	-- 1 = keyConfirm
	-- 2 = keyPressed
	animName = animationsList[animId]
	objectPlayAnimation(character, animName, forced); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)	
end

local coverup = true
local allowedtouch = false
local bfcover = false
local gfcover = false

fr = 0
function onUpdate(elapsed)
    noteTweenX("N", 4, 85, 0.01, "linear")
    noteTweenX("I", 5, 200, 0.01, "linear")
    noteTweenX("C", 6, 600, 0.01, "linear")
    noteTweenX("K", 7, 710, 0.01, "linear")
    
    if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then--Detalles pa ,Detalles
      noteTweenX("N", 4, 250, 0.01, "linear")
    noteTweenX("I", 5, 365, 0.01, "linear")
    noteTweenX("C", 6, 765, 0.01, "linear")
    noteTweenX("K", 7, 875, 0.01, "linear")
end
    
fr = fr + elapsed
gurg = ((getPropertyFromClass('Conductor', 'songPosition') / 1000)*(bpm/240))
gurg1 = ((getPropertyFromClass('Conductor', 'songPosition') / 1000)*(bpm/350))
songPos = getSongPosition()
local currentBeat = (songPos/4000)*(curBpm/70) 

	if keyPressed('space') and difficultyName == 'HARD' then
		playAnimation('strum'..directions, 2, false)
end
if curStep == 1504 then
		coverup = false
	end
if curStep == 1552 then
		gfcover = true
			end
   if curStep == 1808 then
        setProperty('gf.visible',false)
		setProperty('boyfriend.alpha',1)
		gfcover = false
		bfcover = true
		coverup = true
	end
end

local iscoverup = false
function onUpdatePost()
	if getProperty("HellBell.animation.curAnim.name") == 'bellin' then
		if getProperty("HellBell.animation.curAnim.finished") then
			objectPlayAnimation('HellBell','dance',true)
		end
	end
	if getProperty("strumspace.animation.curAnim.name") == 'keyPressed' then
		if getProperty("strumspace.animation.curAnim.finished") then
			playAnimation('strum'..directions, 0, true)
		end
	end
	if getProperty("boyfriend.animation.curAnim.name") == 'coverup' then
		if getProperty("boyfriend.animation.curAnim.finished") then
           setProperty('boyfriend.specialAnim',false)
		end
	end
	if getProperty("strumspace.animation.curAnim.name") == 'keyConfirm' then
		if getProperty("strumspace.animation.curAnim.finished") then
			playAnimation('strum'..directions, 0, true)
		end
	end
	
	for i=0, getProperty('notes.length')-1 do
		if getPropertyFromGroup('notes', i, 'noteType') == 'bell' then
			if not isStrummin then
				return
			end

			noteX = getPropertyFromGroup('notes', i, 'x');
			noteY = getPropertyFromGroup('notes', i, 'y');

			if getPropertyFromGroup('notes',i,'isSustainNote') then	
			setPropertyFromGroup('notes', i, 'ignoreNote', true)
			setPropertyFromGroup('notes', i, 'offset.x', -70)	
			end
			hitbox = 50;
			
			noteData = getPropertyFromGroup('notes', i, 'noteData');
			
			strumY = getProperty('strum'..directions..'.y')	

			noteX = getProperty('strum'..directions..'.x')
			
			if downscroll then
				noteY = (noteY -25 + offsets[0].x)
				else
                noteY = (noteY + noteoffset + offsets[0].x)
			end

  
			setPropertyFromGroup('notes', i, 'x', noteX+20)
			setPropertyFromGroup('notes', i, 'y', noteY)
			
            if math.abs(noteY - strumY) <= hitbox then
				if botPlay then
					playAnimation('strum'..directions, 1, true)
					removeFromGroup('notes', i)
					if coverup then
						if not bfcover then
						triggerEvent('Change Character',"0",'altdawn-cover')
						elseif gfcover then
						triggerEvent('Change Character',"2",'dtgf-cover')
						else
						triggerEvent('Change Character',"0",'dtbf-cover')
						end
						if not iscoverup then
							setProperty('boyfriend.specialAnim',true)
							if gfcover then
								triggerEvent('Play Animation','coverup','gf')
							else
                                triggerEvent('Play Animation','coverup','boyfriend')                    
							end
							runTimer('uncover',1)
							iscoverup = true 
						end
					end
				end
				triggerEvent('Screen Shake','0.2,0.005','')
				objectPlayAnimation('HellBell','bellin',true)
				
				if keyPressed('up') and not botPlay or difficultyName == 'HARD' and keyPressed('space') and not botPlay then
					playAnimation('strum'..directions, 1, true)
					removeFromGroup('notes', i)				
					if coverup then
						if not bfcover then
						triggerEvent('Change Character',"0",'altdawn-cover')
						elseif gfcover then
						triggerEvent('Change Character',"2",'dtgf-cover')
						else
						triggerEvent('Change Character',"0",'dtbf-cover')
						end
						if not iscoverup then
							setProperty('boyfriend.specialAnim',true)
							if gfcover then
								triggerEvent('Play Animation','coverup','gf')
							else
							triggerEvent('Play Animation','coverup','boyfriend')
							end
							runTimer('uncover',1)
							iscoverup = true 
						end
					end
				else
	       end
		end
		end
	end
end

function onTimerCompleted(t)
	if t == 'uncover' then
		iscoverup = false
		if coverup then
		if not bfcover then
		triggerEvent('Change Character',"0",'altdawn')
		elseif gfcover then
		triggerEvent('Change Character',"2",'dtgf')
		else
		triggerEvent('Change Character',"0",'dtbf')
		end	
	    end
	end
end

function noteMiss(id,noteData,noteType,isSustainNote)
	if noteType == 'bell' then
		if not isSustainNote then
		setProperty('health',getProperty('health')-0.4)
		end
	end
end