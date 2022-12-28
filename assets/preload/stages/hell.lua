-- stage base by Carlツ on YT
-- edited version by Laztrix
-- https://www.youtube.com/channel/UCcwMlW2ISmZ_v6x9LolOR6Q -- carl channel
-- thanks man -laztrix
--al final terminé optimizando todo el stage xddd (Nickobelit)

function onCreate()
	-- background stuff
	makeLuaSprite('floor', 'stages/hell/images/floor', -210, 560);
	scaleObject('floor', 1, 1);
	
	makeLuaSprite('wall', 'stages/hell/images/wall', -206, -68);
	scaleObject('wall', 1,1);
	
	makeLuaSprite('rocks', 'stages/hell/images/rocks', -146, 696);
	scaleObject('rocks', 1, 0.9);
	
	makeLuaSprite('floorbot', 'stages/hell/images/floorbot', 504, 696);
	scaleObject('floorbot', 1,1);

	makeLuaSprite('pilfor', 'stages/hell/images/pilfor', 1199, 780);
	scaleObject('pilfor', 0.9, 1);
	
    makeLuaSprite('pil', 'stages/hell/images/pil', 349, 310);
	scaleObject('pil', 1,1);
	
	makeAnimatedLuaSprite('HellBell','stages/hell/images/HellBell',620,282)
	scaleObject('HellBell', 0.45, 0.45)
	addAnimationByPrefix('HellBell','dance','BellIdle',24,true)
	addAnimationByPrefix('HellBell','bellin','BongLmao',24,false)

if not lowQuality then
	makeAnimatedLuaSprite('glowleft','stages/hell/images/glowleft',-422,448)
	scaleObject('glowleft', 1, 1)
	addAnimationByPrefix('glowleft','dance','glowleft',24,true)
	
	makeAnimatedLuaSprite('glowright','stages/hell/images/glowright',1000,438)
	scaleObject('glowright', 1, 1)
	addAnimationByPrefix('glowright','dance','glowright',24,true)
	end

	makeAnimatedLuaSprite('lavabottom','stages/hell/images/lavabottom',-220,650)
	scaleObject('lavabottom', 1, 1)
	
	makeAnimatedLuaSprite('lavatop','stages/hell/images/lavatop',-224,648)
	addAnimationByPrefix('lavabottom','dance','lavabottom',24,true)
	addAnimationByPrefix('lavatop','dance','lavatop',24,true)
	scaleObject('lavatop', 1, 1)

	addLuaSprite('wall', false);
	addLuaSprite('lavabottom', false);
	addLuaSprite('floorbot', false);
	addLuaSprite('rocks', false);
	addLuaSprite('lavatop', false);
	addLuaSprite('glowleft', false);
	addLuaSprite('glowright', false);
	addLuaSprite('floor', false);
	addLuaSprite('HellBell', false);
	addLuaSprite('pilfor', false);
	addLuaSprite('pil', false);
end

local nointro = false
function onCreatePost()
	setProperty('gf.alpha',0)
	if not nointro then
	setProperty('camGame.visible',false)
	setProperty('camHUD.visible',false)
	end
end

function onBeatHit()
	if curBeat == 323 then
	makeAnimatedLuaSprite('ContractBF','characters/beelze/ContractBF', 975, 490)
	scaleObject('ContractBF', 0.62, 0.62)
	getObjectOrder('ContractBF')
	setObjectOrder('dadGroup', 10)
	setObjectOrder('ContractBF', 11)
	setObjectCamera('ContractBF', 'game')
	for i = 1,9 do
	addAnimationByPrefix('ContractBF','a'..i,'Contract_BF_0'..i,24,false)
	end
	addAnimationByPrefix('ContractBF','idle','ContractIdle',24,false)
objectPlayAnimation('ContractBF','idle',true)
	addLuaSprite('ContractBF', false);
end

if curBeat == 448 then
	doTweenColor('contract','ContractBF',"ff0000",1,'circOut')
	doTweenX('contractx','ContractBF.scale',0,2,'circOut')
	doTweenY('contracty','ContractBF.scale',0,2,'circOut')
end
if curBeat == 582 then
	doTweenAlpha('camh','camHUD',0,2,'circOut')
end
if curBeat == 584 then
	doTweenZoom('camOther','camOther',0.84,3,'sineOut')
	doTweenZoom('camgame','camGame',0.6,3,'sineOut')
end
if curBeat == 597 then
	doTweenAlpha('camGame','camGame',0,0.7,'circOut')
    playSound('bimbembooff',0.5)
end
if curBeat == 600 then
	doTweenAlpha('dsbf','dsbf',0.6,3,'circOut')
end
end

local allowCountdown = false
local stops = 0;


function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and not seenCutscene and not nointro then
		setProperty('camOther.zoom',0.836)
		setProperty('camHUD.zoom',0.5)
		setProperty('camGame.zoom',0.6)
		setProperty('inCutscene', true);
		
		if stops == 0 then
			makeLuaSprite('ds','UI/base/hellbell/ds_01',-220,-120)
			addLuaSprite('ds')
			scaleObject('ds',0.9,0.9)
			setObjectCamera('ds','other')
			runTimer('activeds',1)
			setProperty('skipCountdown',true)

		end
		if stops == 1 then
		
		setProperty('camHUD.alpha',1)
		runTimer('startDialogue', 0.2);
		
		end
		stops = stops + 1
		return Function_Stop;
	end
	return Function_Continue;
end
function onTweenCompleted(t)
	if t == 'ds1' then
		removeLuaSprite('bimbembo',true)
		removeLuaSprite('dsgra',true)
	end
end
function onTimerCompleted(t)
	if t == 'activeds' then
		makeLuaSprite('dsgra','UI/base/hellbell/dsgradient',129.5,80)
		addLuaSprite('dsgra')
		scaleObject('dsgra',0.79,0.795)
		setObjectCamera('dsgra','other')
		runTimer('introds',0.1)
		
		makeLuaSprite('dsbf','UI/base/hellbell/ds_03',-190,-100)
		addLuaSprite('dsbf')
		scaleObject('dsbf',0.87,0.87)
		setObjectCamera('dsbf','other')
		setProperty('dsbf.alpha',0)
	end
	if t == 'introds' then
		makeAnimatedLuaSprite('bimbembo',"UI/base/hellbell/bimbembo",270,100)
        addAnimationByPrefix('bimbembo','intro','dsintro',24,false)
		addLuaSprite('bimbembo')
		setObjectCamera('bimbembo','other')
        scaleObject('bimbembo',1.6,1.6)
		playSound('bimbembo',0.5)
		runTimer('startplay',2)
		setProperty('camGame.visible',true)
	setProperty('camHUD.visible',true)
	end
	if t == 'startplay' then
		allowCountdown = true;
		setProperty('inCutscene', false);

doTweenAlpha('ds1','dsgra',0,1,'circOut')
doTweenAlpha('ds2','bimbembo',0,1,'circOut')
		startDialogue('dialogue');
		startCountdown();
	end
end
function onSongStart()
	doTweenZoom('goin','camOther',1.5,3,'elasticInOut')
end
function onUpdatePost(elapsed)
    setTextString("botplayTxt", "Botplay\nno los escuches!!")
    setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
	setPropertyFromGroup('playerStrums',0,'alpha',0.8)
	setPropertyFromGroup('playerStrums',1,'alpha',0.8)
	setPropertyFromGroup('playerStrums',2,'alpha',0.8)
	setPropertyFromGroup('playerStrums',3,'alpha',0.8)
	setObjectOrder('wall',0);
    setObjectOrder('lavabottom',1);
    setObjectOrder('floorbot',2);
    setObjectOrder('rocks',3);
    setObjectOrder('lavatop',4);
    setObjectOrder('glowleft',5);
    setObjectOrder('glowright',6);
    setObjectOrder('floor',7);
    setObjectOrder('HellBell',8);
    setObjectOrder('pilfor',9);
    setObjectOrder('pil',10);
    setObjectOrder('dadGroup',11);
    setObjectOrder('boyfriendGroup',12);
    setObjectOrder('gfGroup',13);
    setObjectOrder('dsgra',14);
    setObjectOrder('bimbembo',15);
    setObjectOrder('dsbf',16);
	end
function onTweenCompleted(t)
	if t == 'e' then
		doTweenZoom('goina','camHUD',1,5.3,'expoOut')
		doTweenZoom('goin','camOther',1.5,3,'expoOut')
	end
end
