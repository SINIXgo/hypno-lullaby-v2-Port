function onCreate()
if not lowQuality then
if songName == 'Safety Lullaby' then
    makeAnimatedLuaSprite('efectoHypnosis', 'characters/hypno/Psyshock', 450, 30)
    addAnimationByPrefix('efectoHypnosis', 'efecto', 'Full Psyshock Particle', 24, false);
	objectPlayAnimation('efectoHypnosis','efecto',false);
	scaleLuaSprite('efectoHypnosis', 1,1); 
	addLuaSprite('efectoHypnosis', true);
	setScrollFactor('efectoHypnosis',0.9,0.9);
	setProperty('efectoHypnosis.alpha', 0)

	makeAnimatedLuaSprite('hypnosis', 'characters/hypno/Hypno Phase 1 Sheet', -200 ,30);
	addAnimationByPrefix('hypnosis', 'shock', 'Psyshock Full', 24, false);
    objectPlayAnimation('hypnosis','shock',false);
	scaleLuaSprite('hypnosis', 2.6,2.6); 
	addLuaSprite('hypnosis', true);
	setScrollFactor('hypnosis',0.9,0.9);
	setProperty('hypnosis.alpha', 0)
end
end
end

function onEvent(name)
    if name == "Hypnosis" then
if not lowQuality then
    if songName == 'Safety Lullaby' then
    setProperty('dad.visible', false);
    setProperty('hypnosis.alpha', 1)
    setProperty('efectoHypnosis.alpha', 1)
	objectPlayAnimation('efectoHypnosis','efecto',false);
    objectPlayAnimation('hypnosis','shock',false);
    runTimer('adiosHypnosis', 0.9)
    runTimer('adiosEfecto', 0.5)
    end
    cameraFlash('hud', 'E8A2AD', 0.8)
    playSound('Psyshock',1)
	end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'adiosEfecto' then
   setProperty('efectoHypnosis.alpha', 0)
end
   if tag == 'adiosHypnosis' then
   setProperty('dad.visible', true);
   setProperty('hypnosis.alpha', 0)
   end
end