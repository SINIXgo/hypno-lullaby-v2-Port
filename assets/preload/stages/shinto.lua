function onCreate()
	makeLuaSprite('BG_shitno', 'stages/shitty-cave/BG_shitno', -20, 0);
     setLuaSpriteScrollFactor('BG_shitno', 0.95, 0.95);
	scaleObject('BG_shitno', 6, 6);
	setProperty('BG_shitno.antialiasing', false);
addLuaSprite('BG_shitno', false);

makeLuaSprite('BG_shitno2', 'stages/shitty-cave/BG_shitno', -20, -940);
setLuaSpriteScrollFactor('BG_shitno2', 0.95, 0.95);
scaleObject('BG_shitno2', 6, 6);
setProperty('BG_shitno2.antialiasing', false);
addLuaSprite('BG_shitno2', false);
end

function onCreatePost()
    setTextString("botplayTxt", "Botplay\neso es una mujer??")
	setProperty("boyfriend.visible", false);
	setProperty("gfGroup.visible", false);
end

function onStepHit()
	if curStep == 2078 then
		makeAnimatedLuaSprite('shitno_pokeball','stages/shitty-cave/shitno_pokeball',1000,780)
		addAnimationByIndices('shitno_pokeball', 'idle', 'shitno_pokeballend0','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24',24)
		objectPlayAnimation('shitno_pokeball', 'idle', true);
		scaleObject('shitno_pokeball',4,4)
		setProperty('shitno_pokeball.antialiasing', false);
		addLuaSprite('shitno_pokeball',true)
	end
end

