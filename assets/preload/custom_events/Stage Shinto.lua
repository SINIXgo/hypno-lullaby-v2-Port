function onEvent(name,value1)
		if name == 'Stage Shinto' then 

			if value1 == '1' then
				doTweenAlpha('camGame', 'camGame', 1, 3.5, 'quadInOut');
				doTweenAlpha('iconP2', 'iconP2', 0, 0.01, 'quadInOut');
				setPropertyFromGroup('opponentStrums',0,'alpha',0);
				setPropertyFromGroup('opponentStrums',1,'alpha',0);
				setPropertyFromGroup('opponentStrums',2,'alpha',0);
				setPropertyFromGroup('opponentStrums',3,'alpha',0);
				setProperty('defaultCamZoom', 1)
				end	
				if value1 == '2' then
					end			  
			end
		end
