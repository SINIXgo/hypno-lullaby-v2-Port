--Codigo por Nickobelit (Si,Todo xd)
x= -625
y= -100
consistentSize= 1.25
function onCreate()
    makeLuaSprite('sky', 'stages/bar/SKY', x+914*consistentSize , y+263*consistentSize);
	scaleObject('sky', 1.26,1.25);
    addLuaSprite('sky', false)
    
    makeLuaSprite('shine', 'stages/bar/shine', x+916*consistentSize, y+265*consistentSize);
	scaleObject('shine', 1.25,1.25);
    addLuaSprite('shine', false);
    
    makeAnimatedLuaSprite('fingers', 'stages/bar/SFingers', x+1000*consistentSize,math.floor(y+300*consistentSize)-1);
    addAnimationByPrefix('fingers', 'idle', 'SFingers', 24, false);
    objectPlayAnimation('fingers', 'idle', true);
    scaleObject('fingers', 1.25,1.25);
    addLuaSprite('fingers', false)

	makeLuaSprite('bg', 'stages/bar/bar', x, y);
	scaleObject('bg', 1.25,1.25);
    addLuaSprite('bg', false);
    
    makeLuaSprite('holder', 'stages/bar/holder', x+1180*consistentSize, y+228*consistentSize);
	scaleObject('holder', 1.25,1.25);
    addLuaSprite('holder', false);
    
    makeAnimatedLuaSprite('MrW', 'stages/bar/MrWidemouth', x+1110*consistentSize,y+335*consistentSize);
    addAnimationByPrefix('MrW', 'idle', 'MrWidemouth instance 1', 24, false);
    objectPlayAnimation('MrW', 'idle', true);
    scaleObject('MrW', 1.25,1.25);
    addLuaSprite('MrW', false)
    
    makeLuaSprite('machine', 'stages/bar/machine', 260,220);
	scaleObject('machine', 0.48,0.48);
    addLuaSprite('machine', false);
    
    makeAnimatedLuaSprite('hero', 'stages/bar/brian_idle', 250,300);
    addAnimationByPrefix('hero', 'idle', 'brian idle ', 24, false);
    objectPlayAnimation('hero', 'idle', true);
    scaleObject('hero', 1.38,1.38);
    setProperty('hero.antialiasing', false);
    addLuaSprite('hero', false)
    
    makeAnimatedLuaSprite('peach', 'stages/bar/CoronationPeach', 490,279);
    addAnimationByPrefix('peach', 'idle', 'CoronationPeach', 24, false);
    objectPlayAnimation('peach', 'idle', true);
    scaleObject('peach', 0.8,0.8);
    addLuaSprite('peach', false)
    
    makeAnimatedLuaSprite('shinto', 'stages/bar/ShintoPastaNight', 625,312);
    addAnimationByPrefix('shinto', 'idle', 'Shitno', 24, false);
    objectPlayAnimation('shinto', 'idle', true);
    scaleObject('shinto', 0.8,0.8);
    addLuaSprite('shinto', false)
    
    makeAnimatedLuaSprite('jack', 'stages/bar/Jack', 78,230);
    addAnimationByPrefix('jack', 'idle', 'Body with tar instance 1', 24, false);
    objectPlayAnimation('jack', 'idle', true);
    scaleObject('jack', 0.8,0.8);
    addLuaSprite('jack', false)
    
    makeAnimatedLuaSprite('slender', 'stages/bar/Buds_Slender_Effects', 836,133);
    addAnimationByPrefix('slender', 'idle', 'Slenderman Full', 24, true);
    objectPlayAnimation('slender', 'idle', true);
    scaleObject('slender', 0.7,0.7);
    addLuaSprite('slender', false)
    
    makeAnimatedLuaSprite('ben', 'stages/bar/Ben_Drowned_BG', 1190, 262);
    addAnimationByPrefix('ben', 'idle', 'ben drowned0' ,24, false);
    addAnimationByPrefix('ben', 'teMira', 'ben drowned looking', 24, false);
    objectPlayAnimation('ben', 'idle', true);
    scaleObject('ben', 0.68,0.68);
    addLuaSprite('ben', false)
    
    makeAnimatedLuaSprite('calamardoCuerpo', 'stages/bar/Squirtward', 785,270);
    addAnimationByPrefix('calamardoCuerpo', 'body', 'Squidward_idleBody', 24, false);
    objectPlayAnimation('calamardoCuerpo', 'body', true);
    scaleObject('calamardoCuerpo', 0.7,0.7);
    addLuaSprite('calamardoCuerpo', false)
    
    makeAnimatedLuaSprite('calamardoCabeza', 'stages/bar/Squirtward', 785,270);
    addAnimationByPrefix('calamardoCabeza', 'head', 'Squidward_idleHead', 24, false);
    objectPlayAnimation('calamardoCabeza', 'head', true);
    scaleObject('calamardoCabeza', 0.7,0.7);
    addLuaSprite('calamardoCabeza', false)
    
    makeLuaSprite('misc', 'stages/bar/TableMisc', 787,445);
	scaleObject('misc', 0.64,0.64);
    addLuaSprite('misc', false);
    
    makeAnimatedLuaSprite('jeff', 'stages/bar/Jeff', 472, 305);
    addAnimationByPrefix('jeff', 'idle', 'mynamejeff instance 1', 24, false);
    objectPlayAnimation('jeff', 'idle', true);
    scaleObject('jeff', 1,1);
    addLuaSprite('jeff', false)
    
    makeAnimatedLuaSprite('mouseYbart', 'stages/bar/Mousetable', x+700*consistentSize , y+375*consistentSize);
    addAnimationByPrefix('mouseYbart', 'idle', 'Mousetable', 24, false);
    objectPlayAnimation('mouseYbart', 'idle', true);
    scaleObject('mouseYbart', 0.65,0.65);
    addLuaSprite('mouseYbart', false)
    
    makeAnimatedLuaSprite('jeffArm', 'stages/bar/JeffArm', 500,445);
    addAnimationByPrefix('jeffArm', 'arm', 'Only the arm shit instance 1', 24, false);
    objectPlayAnimation('jeffArm', 'arm', true);
    scaleObject('jeffArm', 1,1);
    addLuaSprite('jeffArm', false)
    
    makeAnimatedLuaSprite('gbMario', 'stages/bar/GB_PastaNight_Assets', 1650,250);
    addAnimationByPrefix('gbMario', 'idle', 'GBWalkPioladepana', 24, true);
    objectPlayAnimation('gbMario', 'idle', true);
    scaleObject('gbMario', 1.65,1.65);
    addLuaSprite('gbMario', false)
    
    makeAnimatedLuaSprite('goldGlobosxd', 'stages/bar/GOLD_PASTA_NIGHT', 1650,-100);
    addAnimationByPrefix('goldGlobosxd', 'idle', 'GOLD PASTA NIGHT instance 1', 24, true);
    objectPlayAnimation('goldGlobosxd', 'idle', true);
    scaleObject('goldGlobosxd', 1.65,1.65);
    addLuaSprite('goldGlobosxd', false)
       
    makeAnimatedLuaSprite('toadDead', 'stages/bar/TOAD_WITH_A_TRUMPET', -200,160);
    addAnimationByPrefix('toadDead', 'idle', 'TOAD', 24, false);
    objectPlayAnimation('toadDead', 'idle', true);
    scaleObject('toadDead', 1,1);
    addLuaSprite('toadDead', false)
    setProperty('toadDead.alpha', 0)
    
    makeLuaSprite('mesa', 'stages/bar/TABLE', -500,765);
	scaleObject('mesa', 0.75,0.75);
    addLuaSprite('mesa', false);
    
    if difficultyName == 'Lord-X' then
    addLuaScript('custom_events/MxManoOponente')
    setObjectOrder('sky',0);
    setObjectOrder('shine',1);
    setObjectOrder('fingers',2);
    setObjectOrder('holder',3);
    setObjectOrder('bg',4);
    setObjectOrder('MrW',5);
    setObjectOrder('machine',6);
    setObjectOrder('hero',7);
    setObjectOrder('peach',8);
    setObjectOrder('shinto',9);
    setObjectOrder('jack',10);
    setObjectOrder('slender',11);
    setObjectOrder('ben',12);
    setObjectOrder('calamardoCuerpo',13);
    setObjectOrder('calamardoCabeza',14);
    setObjectOrder('misc',15);
    setObjectOrder('jeff',16);
    setObjectOrder('mouseYbart',17);
    setObjectOrder('jeffArm',18);
    setObjectOrder('gbMario',19);
    setObjectOrder('goldGlobosxd',20);
    setObjectOrder('toadDead',21);
    setObjectOrder('dadGroup',22);
    setObjectOrder('gfGroup',23);
    setObjectOrder('mesa',24);
    setObjectOrder('MXMano',25);
    setObjectOrder('boyfriendGroup',26);
    end
    if difficultyName == 'Mx' then
    addLuaScript('custom_events/MxManoJugador')
    setObjectOrder('sky',0);
    setObjectOrder('shine',1);
    setObjectOrder('fingers',2);
    setObjectOrder('holder',3);
    setObjectOrder('bg',4);
    setObjectOrder('MrW',5);
    setObjectOrder('machine',6);
    setObjectOrder('hero',7);
    setObjectOrder('peach',8);
    setObjectOrder('shinto',9);
    setObjectOrder('jack',10);
    setObjectOrder('slender',11);
    setObjectOrder('ben',12);
    setObjectOrder('calamardoCuerpo',13);
    setObjectOrder('calamardoCabeza',14);
    setObjectOrder('misc',15);
    setObjectOrder('jeff',16);
    setObjectOrder('mouseYbart',17);
    setObjectOrder('jeffArm',18);
    setObjectOrder('gbMario',19);
    setObjectOrder('goldGlobosxd',20);
    setObjectOrder('toadDead',21);
    setObjectOrder('boyfriendGroup', 22);
    setObjectOrder('gfGroup',23);
    setObjectOrder('mesa',24);
    setObjectOrder('MXMano',25);
    setObjectOrder('dadGroup',26);
    end
    if difficultyName == 'Hypno' then
    addLuaScript('custom_events/MxManoOponente')
    setCharacterX('boyfriend', 880);
    setCharacterY('boyfriend', 165);
    setCharacterX('gf', -35);
    setCharacterY('gf', 220);
    setObjectOrder('sky',0);
    setObjectOrder('shine',1);
    setObjectOrder('fingers',2);
    setObjectOrder('holder',3);
    setObjectOrder('bg',4);
    setObjectOrder('MrW',5);
    setObjectOrder('machine',6);
    setObjectOrder('hero',7);
    setObjectOrder('peach',8);
    setObjectOrder('shinto',9);
    setObjectOrder('jack',10);
    setObjectOrder('slender',11);
    setObjectOrder('ben',12);
    setObjectOrder('calamardoCuerpo',13);
    setObjectOrder('calamardoCabeza',14);
    setObjectOrder('misc',15);
    setObjectOrder('jeff',16);
    setObjectOrder('mouseYbart',17);
    setObjectOrder('jeffArm',18);
    setObjectOrder('gbMario',19);
    setObjectOrder('goldGlobosxd',20);
    setObjectOrder('toadDead',21);
    setObjectOrder('dadGroup', 22);
    setObjectOrder('boyfriendGroup',23);
    setObjectOrder('mesa',24);
    setObjectOrder('MXMano',25);
    setObjectOrder('gfGroup',26);
    end
end

function onCreatePost()  
if getPropertyFromClass('ClientPrefs', 'downScroll') then
        setPropertyFromClass("ClientPrefs", "downScroll", false)
        end
if difficultyName == 'Mx' then
     setProperty('iconP1.y', getProperty('iconP1.y') - 40);   
end
end

function onUpdatePost()
if difficultyName == 'Lord-X' then
setTextString("botplayTxt","Botplay\nHell Mode :(")
end
if difficultyName == 'Mx' then
setTextString("botplayTxt","Botplay\nGameover Referencia :0")
setProperty('botplayTxt.x', -20);
end
if difficultyName == 'Hypno' then
setTextString("botplayTxt", "Si ya es fácil porque usas\nBotplay")
setProperty('botplayTxt.x', 820);
end
    setPropertyFromGroup('opponentStrums',0,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',1,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',2,'alpha',0.5)
	setPropertyFromGroup('opponentStrums',3,'alpha',0.5)
    setPropertyFromGroup('playerStrums',0,'alpha',0.8)
	setPropertyFromGroup('playerStrums',1,'alpha',0.8)
	setPropertyFromGroup('playerStrums',2,'alpha',0.8)
	setPropertyFromGroup('playerStrums',3,'alpha',0.8)
end

function onStepHit()--No entendí el sistema del source y lo hize así xd
    if curStep == 66 then
    doTweenAlpha('holaToad', 'toadDead', 1, 0.3,linear)
    end
   if curStep == 112 then
    doTweenAlpha('adiosToad', 'toadDead', 0, 0.3,linear)
    end
   if curStep == 247 then
    doTweenX('mueveteGold', 'goldGlobosxd', -750, 12,'linear');
    runTimer('chauGold',12)
   end
   if curStep == 256 then
    doTweenAlpha('holaToad', 'toadDead', 1, 0.3,linear)
    end
   if curStep == 384 then
    doTweenAlpha('adiosToad', 'toadDead', 0, 0.3,linear)
    end
    if curStep == 512 then
    doTweenAlpha('holaToad', 'toadDead', 1, 0.3,linear)
    end
   if curStep == 768 then
    doTweenAlpha('adiosToad', 'toadDead', 0, 0.3,linear)
    end
   if curStep == 782 then
    doTweenX('mueveteGB', 'gbMario', -750, 12,'linear');
    runTimer('chauMario',12)
    end
   if curStep == 872 then
    doTweenAlpha('holaToad', 'toadDead', 1, 0.3,linear)
    end
   if curStep == 912 then
    doTweenAlpha('adiosToad', 'toadDead', 0, 0.3,linear)
    end
    if curStep == 1016 then
    doTweenAlpha('holaToad', 'toadDead', 1, 0.3,linear)
    end
   if curStep == 1072 then
    doTweenAlpha('adiosToad', 'toadDead', 0, 0.3,linear)
    end
end

function onTimerCompleted(tag)
if tag == 'chauGold' then
removeLuaSprite('goldGlobosxd',true)
end
if tag == 'chauMario' then
removeLuaSprite('gbMario',true)
end
end

function onBeatHit()
objectPlayAnimation('toadDead', 'idle', true);
	if curBeat % 2 == 0 then 
		objectPlayAnimation('fingers', 'idle', false);
		objectPlayAnimation('MrW', 'idle', false);
		objectPlayAnimation('hero', 'idle', false);
		objectPlayAnimation('peach', 'idle', false);
		objectPlayAnimation('shinto', 'idle', false);
		objectPlayAnimation('jack', 'idle', false);
		objectPlayAnimation('slender', 'idle', false);
		objectPlayAnimation('calamardoCuerpo', 'body', false);
		objectPlayAnimation('calamardoCabeza', 'head', false);
		objectPlayAnimation('jeff', 'idle', false);
		objectPlayAnimation('mouseYbart', 'idle', false);
		objectPlayAnimation('jeffArm', 'arm', false);
	end
    if curBeat == 84 then
		objectPlayAnimation('ben', 'teMira', false);
end
end

function onCountdownTick(counter)
if counter  == 3 then
     setPropertyFromClass("ClientPrefs", "downScroll", false)
     end
	if counter % 2 == 0 then
        objectPlayAnimation('toadDead', 'idle', true);
		objectPlayAnimation('fingers', 'idle', false);
		objectPlayAnimation('MrW', 'idle', false);
		objectPlayAnimation('hero', 'idle', false);
		objectPlayAnimation('peach', 'idle', false);
		objectPlayAnimation('shinto', 'idle', false);
		objectPlayAnimation('jack', 'idle', false);
		objectPlayAnimation('slender', 'idle', false);
		objectPlayAnimation('calamardoCuerpo', 'body', false);
		objectPlayAnimation('calamardoCabeza', 'head', false);
		objectPlayAnimation('jeff', 'idle', false);
		objectPlayAnimation('mouseYbart', 'idle', false);
		objectPlayAnimation('jeffArm', 'arm', false);
	end
end