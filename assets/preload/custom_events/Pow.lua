function onCreate()--Por Nickobelit
    makeAnimatedLuaSprite('MXManoPow', 'characters/mx/mxfront',0, 150); 
    addAnimationByPrefix('MXManoPow', 'pow1', 'Hit1Front', 24, false);
    addAnimationByPrefix('MXManoPow', 'pow2', 'Hit2Front', 24, false);
    setProperty('MXManoPow.alpha', 0);
    addLuaSprite('MXManoPow', true)
    scaleObject('MXManoPow', 2,2)
    
	makeAnimatedLuaSprite('bloquePow', 'characters/mx/mxblock',-345, 790);
	addAnimationByPrefix('bloquePow', 'idle', 'BlockIdle', 24, false);
	objectPlayAnimation('bloquePow', 'idle');
	addLuaSprite('bloquePow', true)
	scaleObject('bloquePow', 1.1,1)
    setProperty('bloquePow.alpha', 1);
end

function onEvent(name, value1, value2)
       if name == "Pow" then
       if difficultyName == 'Lord-X' or difficultyName == 'Hypno' then
       triggerEvent('Play Animation','hit1','dad')
       playSound('HandUp', 1)
       setProperty('MXManoPow.alpha', 1);
       setProperty('MXMano.alpha', 0);
       objectPlayAnimation('MXManoPow', 'pow1');
       setProperty('MXManoPow.offset.x',150)
       setProperty('MXManoPow.offset.y',-290)
       runTimer('MecanicaOn',0.65)
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'MecanicaOn' then
cameraShake('game', 0.005, 0.8)
playSound('POW', 1)
objectPlayAnimation('bloquePow', 'idle');
triggerEvent('Play Animation','hit2','dad')
objectPlayAnimation('MXManoPow', 'pow2');
setProperty('MXManoPow.offset.x',105)
setProperty('MXManoPow.offset.y',-370)
runTimer('ManoAlpha1',0.65)  
    if difficultyName == 'Lord-X' then
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
       setObjectOrder('gfGroup',23);
       setObjectOrder('mesa',24);
       setObjectOrder('MXMano',25);
       setObjectOrder('boyfriendGroup',26);
       setObjectOrder('bloquePow', 27);
       setObjectOrder('MXManoPow', 28);
       end
if difficultyName == 'Hypno' then
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
       setObjectOrder('bloquePow', 27);
       setObjectOrder('MXManoPow', 28);
       end
end

if tag == 'ManoAlpha1' then
setProperty('MXMano.alpha', 1);
setProperty('MXManoPow.alpha', 0);
    if difficultyName == 'Lord-X' then
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
       setObjectOrder('gfGroup',23);
       setObjectOrder('mesa',24);
       setObjectOrder('MXMano',25);
       setObjectOrder('boyfriendGroup',26);
       setObjectOrder('bloquePow', 27);
       setObjectOrder('MXManoPow', 28);
       end
    if difficultyName == 'Hypno' then
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
       setObjectOrder('MXManoPow', 27);
       setObjectOrder('bloquePow', 28);
       end
end
end