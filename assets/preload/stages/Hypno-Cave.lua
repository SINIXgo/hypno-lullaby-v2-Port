function onCreate()
  ---cave---
	makeLuaSprite( 'cave', 'Hypno-Cave/bg1', -400, -70)
	scaleObject('cave', 2.3, 2.3);
	setLuaSpriteScrollFactor('cave', 1.0, 1.0)
	addLuaSprite('cave', false)
	setProperty('cave.visible', true)
  ---bf---
	makeLuaSprite('bf', 'Hypno-Cave/bf-dreaming-zzzzzz', 110, 1410)
	scaleObject('bf', 1.9, 1.9);
	setLuaSpriteScrollFactor('bf', 1.0, 1.0)
	addLuaSprite('bf', true)
	setProperty('bf.visible', true)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'fondo1' then
			setProperty('cave.visible', true);
			setProperty('bf.visible', false);
		end
		if value1 == 'fondo2' then
			setProperty('cave.visible', true);
			setProperty('bf.visible', true);
		end
	end
end
