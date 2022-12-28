function onCreatePost()
                makeAnimatedLuaSprite('enter_gengar','stages/buried/enter_gengar',-400,-60)
				scaleObject('enter_gengar',6.5,6.5)
				setProperty('enter_gengar.antialiasing', false);
				addLuaSprite('enter_gengar',true)
				setProperty('enter_gengar.alpha', 0);
				end

function onEvent(name,value1)
		if name == 'Stage Buried' then 
		   if value1 == '1' then
				doTweenAlpha('adiosBG', 'bgNormal', 0, 0.2, 'quadInOut');
				setProperty('brimstoneBack_GameBoy.alpha', 1);
			end
			if value1 == '2' then
				doTweenAlpha('holaBG', 'bgNormal', 1, 0.4, 'quadInOut');
				setProperty('defaultCamZoom', 0.55);
				doTweenAlpha('brimstoneBack_GameBoy', 'brimstoneBack_GameBoy', 0, 0.5, 'quadInOut');
			end
			if value1 == 'b_n' then
				doTweenAlpha('adiosBG', 'bgNormal', 0, 0.2, 'quadInOut');
                setProperty('brimstoneBack_BN.alpha', 1);
				makeLuaSprite('redoverlay', 'stages/cheated/redoverlay', 0, 0);
	            scaleObject('redoverlay', 1,1);
	            addLuaSprite('redoverlay', false);
	            setObjectCamera('redoverlay', 'hud')
	            setProperty('redoverlay.alpha',0) 
        end

			if value1 == 'ball' then
				makeAnimatedLuaSprite('Pokeball','stages/buried/missingnopokeball_assets',-200,700)
				addAnimationByPrefix('Pokeball','idle','Ball_Throw0',24,false)
				objectPlayAnimation('Pokeball','idle',true)
				scaleObject('Pokeball',5,5)
				setProperty('Pokeball.antialiasing', false);
				addLuaSprite('Pokeball',true)
			end
			if value1 == 'ball2' then
				makeAnimatedLuaSprite('Pokeball','stages/buried/missingnopokeball_assets',-200,700)
				addAnimationByPrefix('Pokeball','idle','Ball_Idle_Normal0',24,true)
				objectPlayAnimation('Pokeball','idle',true)
				scaleObject('Pokeball',5,5)
				setProperty('Pokeball.antialiasing', false);
				addLuaSprite('Pokeball',true)
			end
			if value1 == 'ball3' then
				makeAnimatedLuaSprite('Pokeball','stages/buried/missingnopokeball_assets',-200,700)
				addAnimationByPrefix('Pokeball','idle','Ball_Idle_Break02',24,false)
				objectPlayAnimation('Pokeball','idle',true)
				scaleObject('Pokeball',5,5)
				setProperty('Pokeball.antialiasing', false);
				addLuaSprite('Pokeball',true)
			end
			if value1 == 'ball4' then
				makeAnimatedLuaSprite('Pokeball','stages/buried/missingnopokeball_assets',-200,700)
				addAnimationByPrefix('Pokeball','idle','Ball_FinalBurst0',24,false)
				objectPlayAnimation('Pokeball','idle',true)
				scaleObject('Pokeball',5,5)
				setProperty('Pokeball.antialiasing', false);
				addLuaSprite('Pokeball',true)
			end
			if value1 == 'mano' then
				doTweenAlpha('WA_assets1', 'WA_assets', 1, 0.5, 'quadInOut');
				objectPlayAnimation('WA_assets','inicio',false)
			end
			if value1 == 'mano idle' then
				objectPlayAnimation('WA_assets','idle',false)
			end
			if value1 == 'mano final' then
				objectPlayAnimation('WA_assets','final',true)
			end
			if value1 == 'mano final1' then
				doTweenAlpha('WA_assets2', 'WA_assets', 0, 0.01, 'quadInOut');
			end
			if value1 == 'ball_out' then
				doTweenAlpha('Pokeball', 'Pokeball', 0, 0.1, 'quadInOut');
			end
			if value1 == 'glich' then
				doTweenAlpha('1', '1', 0.6, 0.5, 'quadInOut');
			end
			if value1 == 'gengar' then
                addAnimationByPrefix('enter_gengar','idle','gengar entrance',24,false)
				setProperty('enter_gengar.alpha', 1);
			end
			if value1 == 'gengar2' then
				doTweenAlpha('enter_gengar', 'enter_gengar', 0, 0.01, 'quadInOut');
			end
		end		
	end

function onBeatHit()
		if curBeat % 4== 0 then
			doTweenAlpha('redAlpha', 'redoverlay', 0.6, 0.2, 'linear')
					runTimer('adiosRed',0.4)
				end
			end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'adiosRed' then
     doTweenAlpha('redAlpha2', 'redoverlay', 0.1, 0.2, 'linear');
     end
end