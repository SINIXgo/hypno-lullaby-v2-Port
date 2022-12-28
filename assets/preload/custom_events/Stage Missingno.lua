function onEvent(name,value1)
		if name == 'Stage Missingno' then 

			if value1 == '1' then
				doTweenAlpha('bg', 'bg', 0, 13.9, 'quadInOut')
				doTweenAlpha('sky', 'sky', 0, 13.9, 'quadInOut')
				doTweenAlpha('floor', 'floor', 0, 13.9, 'quadInOut')
			end
			if value1 == '2' then
				doTweenAlpha('iconP2', 'iconP2', 1, 0.3, 'quadInOut');
				doTweenAlpha('dad', 'dad', 1, 0.3, 'quadInOut');
				characterPlayAnim('dad', 'intro', false);
				characterPlayAnim('dad', 'intro', false);
				characterPlayAnim('dad', 'intro', false);
				setPropertyFromGroup('opponentStrums',0,'alpha',0);
				setPropertyFromGroup('opponentStrums',1,'alpha',0);
				setPropertyFromGroup('opponentStrums',2,'alpha',0);
				setPropertyFromGroup('opponentStrums',3,'alpha',0)
				end
				function onUpdate(elapsed)

					if curStep >= 0 then
				  
					  songPos = getSongPosition()
				  
					  local currentBeat = (songPos/1000)*(bpm/80)
				  
					  doTweenY(dadTweenY, 'dad', 50-20*math.sin((currentBeat*0.25)*math.pi),0.001)
				  
					end
				end				  
			end
			if value1 == '3' then
				removeLuaSprite('bg',false)
				removeLuaSprite('sky',false)
				removeLuaSprite('floor',false)
			end
			if value1 == 'camhud' then
				doTweenAlpha('camHUD', 'camHUD', 0.8, 1.5, 'quadInOut');
				setPropertyFromGroup('opponentStrums',0,'alpha',0);
				setPropertyFromGroup('opponentStrums',1,'alpha',0);
				setPropertyFromGroup('opponentStrums',2,'alpha',0);
				setPropertyFromGroup('opponentStrums',3,'alpha',0)
			end
			if value1 == 'glich' then
				doTweenAlpha('GLICH_V2', 'GLICH_V2', 0.3, 0.5, 'quadInOut');
			end
		end		