--Por Perez Sen y Nickobelit
function onCreate()
precacheImage('stages/buried/muksludge')
	makeLuaSprite('brimstoneBack_BN', 'stages/buried/brimstoneBack_BN', -1000, -230);
	scaleObject('brimstoneBack_BN', 5.6, 5.6);
	setProperty('brimstoneBack_BN.antialiasing', false);
	addLuaSprite('brimstoneBack_BN', false);
	setProperty('brimstoneBack_BN.alpha', 0);

	makeLuaSprite('brimstoneBack_GameBoy', 'stages/buried/brimstoneBack_GameBoy', -1000, -230);
	scaleObject('brimstoneBack_GameBoy', 5.6, 5.6);
	setProperty('brimstoneBack_GameBoy.antialiasing', false);
	addLuaSprite('brimstoneBack_GameBoy', false);
	setProperty('brimstoneBack_GameBoy.alpha', 0);

	makeAnimatedLuaSprite('WA_assets','stages/buried/WA_assets',-20,100)
	addAnimationByPrefix('WA_assets','idle','WH_Idle0',24,true);
	addAnimationByPrefix('WA_assets','inicio','WH_Intro0',24,false);
	addAnimationByPrefix('WA_assets','final','WH_ToGF0',24,false);
	scaleObject('WA_assets',6,6);
	setProperty('WA_assets.antialiasing', false);
	addLuaSprite('WA_assets',true)
	setProperty('WA_assets.alpha', 0);
	
	makeLuaSprite('shadowgf','characters/buried/shadow',-30,80)
	scaleObject('shadowgf',6,6)
	addLuaSprite('shadowgf')
	setProperty('shadowgf.antialiasing',false)

	makeLuaSprite('bgNormal', 'stages/buried/brimstoneBack', -1000, -230);
	scaleObject('bgNormal', 5.6, 5.6);
	setProperty('bgNormal.antialiasing', false);
	addLuaSprite('bgNormal', false);

    if getPropertyFromClass('ClientPrefs', 'middleScroll') == false and getPropertyFromClass('ClientPrefs', 'downScroll') == false then
    makeLuaSprite('barr1', 'stages/buried/buried_center', -100, 30) 
    addLuaSprite('barr1',false)
    setGraphicSize('barr1', getProperty('barr1.width') * 3)
    setObjectCamera('barr1', 'HUD')
	setProperty('barr1.antialiasing', false);

    makeLuaSprite('barr', 'stages/buried/buried_center-Full', 800, 550)
    addLuaSprite('barr',false)
    setGraphicSize('barr', getProperty('barr.width') * 3)
    setObjectCamera('barr', 'HUD')
	setProperty('barr.antialiasing', false);	
	end

    if getPropertyFromClass('ClientPrefs', 'middleScroll') == false and getPropertyFromClass('ClientPrefs', 'downScroll') == true then
    makeLuaSprite('barr1', 'stages/buried/buried_center', -100, 550) 
    addLuaSprite('barr1',false)
    setGraphicSize('barr1', getProperty('barr1.width') * 3)
    setObjectCamera('barr1', 'HUD')
	setProperty('barr1.antialiasing', false);

    makeLuaSprite('barr', 'stages/buried/buried_center-Full', 800, 30)
    addLuaSprite('barr',false)
    setGraphicSize('barr', getProperty('barr.width') * 3)
    setObjectCamera('barr', 'HUD')
	setProperty('barr.antialiasing', false);	
	end

if getPropertyFromClass('ClientPrefs', 'middleScroll') == true and getPropertyFromClass('ClientPrefs', 'downScroll') == false then
    makeLuaSprite('barr1', 'stages/buried/buried_center', 325, 30) 
    addLuaSprite('barr1',false)
    setGraphicSize('barr1', getProperty('barr1.width') * 3)
    setObjectCamera('barr1', 'HUD')
	setProperty('barr1.antialiasing', false);
	end

if getPropertyFromClass('ClientPrefs', 'middleScroll') == true and getPropertyFromClass('ClientPrefs', 'downScroll') == true then
    makeLuaSprite('barr1', 'stages/buried/buried_center', 325, 550) 
    addLuaSprite('barr1',false)
    setGraphicSize('barr1', getProperty('barr1.width') * 3)
    setObjectCamera('barr1', 'HUD')
	setProperty('barr1.antialiasing', false);
	end
	
	setProperty('skipCountdown', true)
	setObjectOrder('brimstoneBack_BN',0);
    setObjectOrder('brimstoneBack_GameBoy',1);
    setObjectOrder('brimstoneBack',2);
    setObjectOrder('bgNormal',3);
    setObjectOrder('boyfriendGroup',4);
    setObjectOrder('dadGroup',5);
    setObjectOrder('enter_gengar',6);
    setObjectOrder('Pokeball',7);
    setObjectOrder('gengar',8);
    setObjectOrder('muk',9);
    setObjectOrder('WA_assets',10);
    setObjectOrder('shadowgf',11);
    setObjectOrder('gf1',12);
    setObjectOrder('missingno-intro',13);
    setObjectOrder('missingno',14);
end

	function onCreatePost()
	setProperty('shadowgf.alpha',0)
	setProperty('gf.visible', false);
	setProperty('iconP1.visible', false);
	setProperty('iconP2.visible', false);
    		setProperty('iconP1.alpha', 0)
            setProperty('iconP2.alpha', 0)
end


whitehand = true
		function onUpdate(elapsed)
		setTextString("botplayTxt","BoTpLaY")
		--Codigo del Buen Laztrix
		songPos = getSongPosition()
       local curbeathand = (songPos/3000)*(curBpm/60)
       local curbeatgf = (songPos/6000)*(curBpm/60)
		if curStep >= 0 and curStep < 3488 then  
       if whitehand then
		doTweenY('wahand', 'WA_assets',100 - (math.sin((curbeathand)) * 20), 0.001)
	end    
	end
        if curStep >= 3488 then  
        whitehand = false    
        doTweenX('waax', 'gf1', 240 - (math.sin((curbeatgf)+1) * 100), 0.001)
        doTweenY('waay', 'gf1', 380 - (math.sin((curbeatgf)) * 100), 0.001)
        doTweenX('watf', 'shadowgf',11 - (math.sin((curbeatgf)+1) * 100), 0.001)
    end  
	end	

--Fin del Code De Laztrix
function onStepHit()
        if curStep == 20 then
        doTweenX('bfIntroTweenX', 'boyfriend', -510, 1.5, 'easeOut')
end
        if curStep == 3232 then
       setProperty('shadowgf.alpha',1)
end
       if curStep == 3456 then
       doTweenY('moveshadow','shadowgf',300,2,'sineInOut')
end
end