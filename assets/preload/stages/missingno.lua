function onCreate()
  makeAnimatedLuaSprite('bg','stages/missingno/BG_assets',-800,-350)
  addAnimationByPrefix('bg','idle','Bg Sky',24,true)
  objectPlayAnimation('bg','idle',true)
  scaleObject('bg',7,7)
  setProperty('bg.antialiasing', false);


  makeAnimatedLuaSprite('floor','stages/missingno/BG_assets',-750,-250)
  addAnimationByPrefix('floor','idle','Bg Wave0',24,true)
  objectPlayAnimation('floor','idle',true)
  scaleObject('floor',7,7)
  setProperty('floor.antialiasing', false);


  makeAnimatedLuaSprite('sky','stages/missingno/BG_assets',-800,-350)
  addAnimationByPrefix('sky','idle','Bg Ocean0',24,true)
  objectPlayAnimation('sky','idle',true)
  setProperty('sky.antialiasing', false);
  scaleObject('sky',7,7)
 
  makeAnimatedLuaSprite('bg2','stages/missingno/BG_assets2',-800,-350)
  addAnimationByPrefix('bg2','idle','Bg Sky',24,true)
  objectPlayAnimation('bg2','idle',true)
  scaleObject('bg2',7,7)
  setProperty('bg2.antialiasing', false);


  makeAnimatedLuaSprite('floor2','stages/missingno/BG_assets2',-750,-250)
  addAnimationByPrefix('floor2','idle','Bg Wave0',24,true)
  objectPlayAnimation('floor2','idle',true)
  scaleObject('floor2',7,7)
  setProperty('floor2.antialiasing', false);


  makeAnimatedLuaSprite('sky2','stages/missingno/BG_assets2',-800,-350)
  addAnimationByPrefix('sky2','idle','Bg Ocean0',24,true)
  objectPlayAnimation('sky2','idle',true)
  setProperty('sky2.antialiasing', false);
  scaleObject('sky2',7,7)
  
  makeAnimatedLuaSprite('GLICH_V2','stages/missingno/GLICH_V2',-750,-250)
  addAnimationByPrefix('GLICH_V2','idle','Glich_Perez0',22,true)
  objectPlayAnimation('GLICH_V2','idle',true)
  scaleObject('GLICH_V2',2,2)
  setProperty('GLICH_V2.antialiasing', false);
  setObjectCamera('GLICH_V2', 'other');
  
  addLuaSprite('bg2',false)
  addLuaSprite('sky2',false)
  addLuaSprite('floor2',false)

  addLuaSprite('bg',false)
  addLuaSprite('sky',false)
  addLuaSprite('floor',false)
  addLuaSprite('GLICH_V2',true)
  setProperty('skipCountdown', true);
  end

  function onCreatePost()
    setProperty('GLICH_V2.alpha', 0);
    setProperty('gf.alpha', 0);
    setProperty('dad.alpha', 0);
    setProperty('iconP2.alpha', 0);
    doTweenAlpha('camHUD', 'camHUD', 0, 0.01, 'quadInOut');
    doTweenAlpha('camGame', 'camGame', 0, 0.01, 'quadInOut'); 
    doTweenAlpha('camGame1', 'camGame', 1, 4.2, 'quadInOut');
  end

   function onUpdatePost()
   if curStep < 384 then
   setTextString("botplayTxt", "Botplay\naquí no hay nadie,vete")
   else
    setTextString("botplayTxt", "Botplay\nte lo advertí")
   end
end
