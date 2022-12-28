function onCreate()

	makeLuaSprite('Hypno bg midground', 'backgrounds/alley/Hypno bg midground', -690, -1000);
	setScrollFactor('Hypno bg midground', 1, 1);
	scaleObject('Hypno bg midground', 1.3, 1.3);
	addLuaSprite('Hypno bg midground', false);

	makeLuaSprite('Hypno bg foreground', 'backgrounds/alley/Hypno bg foreground', -660, -1000);
	setScrollFactor('Hypno bg foreground', 1, 1);
	scaleObject('Hypno bg foreground', 1.3, 1.3);
	addLuaSprite('Hypno bg foreground', true);

	close(true);
end