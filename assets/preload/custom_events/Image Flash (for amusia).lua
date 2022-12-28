function onEvent(name, value1, value2)
	if name == "Image Flash (for amusia)" then
		makeLuaSprite('image', '', -600, -500);
        makeGraphic('image',1280,720,'ffffff')
        setLuaSpriteScrollFactor('image',1,1)
        scaleObject('image', 5.5, 5.5) 
	     addLuaSprite('image', true);
		runTimer('wait', value2);
		setObjectOrder('bg', 0);
	setObjectOrder('bg2', 1);
	setObjectOrder('blue1', 2);
	setObjectOrder('blue2', 3);
	setObjectOrder('dadGroup', 4);
	setObjectOrder('boyfriendGroup', 5);
	setObjectOrder('black', 6);
	setObjectOrder('image', 7);
	setObjectOrder('bgIntro', 8);
	setObjectOrder('dadIntro', 9);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end