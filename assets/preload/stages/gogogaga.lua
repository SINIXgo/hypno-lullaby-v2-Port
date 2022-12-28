function onCreate()
    makeLuaSprite('bg', 'shitpost/images/bgXD', 1100, 450)
    addLuaSprite('bg',false)
    scaleObject('bg',2.1,2.1)
    setProperty('bg.antialiasing', false);
    
    makeAnimatedLuaSprite('babyMuk', 'shitpost/images/LargeLenny', 1765, 760); 
    addAnimationByPrefix('babyMuk', 'idle', 'Leaker', 10,false)
    objectPlayAnimation('babyMuk', 'idle',true); 
    scaleObject('babyMuk', 0.35,0.35);
    setProperty('babyMuk.antialiasing', false);
    addLuaSprite('babyMuk', true);
end

function onUpdatePost()
setTextString("botplayTxt", "Botplay\nGoogoogaga")
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenX('bfTween1', 4, 90, 0.01, 'linear');
   noteTweenX('bfTween2', 5, 205, 0.01, 'linear'); 
   noteTweenX('bfTween3', 6, 315, 0.01, 'linear');
   noteTweenX('bfTween4', 7, 425, 0.01, 'linear'); 
   noteTweenX('dadTween1', 0, 730, 0.01, 'linear'); 
   noteTweenX('dadTween2', 1, 845, 0.01, 'linear');
   noteTweenX('dadTween3', 2, 955, 0.01, 'linear')
   noteTweenX('dadTween4', 3, 1065, 0.01, 'linear');
end
if getProperty('health') <= 0.2 then
        setProperty('health',getProperty('health') + 2)
        debugPrint('No Puedes Perder xddd')
      end     
end

function onBeatHit()
    if curBeat % 2 == 0 then
     objectPlayAnimation('babyMuk','idle',true)
end
end


function onCountdownTick(counter)
	if counter % 2 == 0 then
        objectPlayAnimation('babyMuk','idle',true)
	end
end