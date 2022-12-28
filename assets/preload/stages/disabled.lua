directory = 'stages/disabled/images/'
function onCreate()



    makeLuaSprite('background1',directory..'background',-200,-350)
    scaleObject('background1',1.2,1.2)
    setScrollFactor('background1',0.125, 0.5)
    addLuaSprite('background1')

    makeLuaSprite('background2',directory..'background2',-200,-350)
    scaleObject('background2',1.2,1.2)
    setScrollFactor('background2',0.125, 0.5)
    addLuaSprite('background2')
    
    makeLuaSprite('questionareBackground',directory..'questionare',0,0)
    scaleObject('questionareBackground',0.25,0.25)
    addLuaSprite('questionareBackground')


    makeLuaSprite('plateL',directory..'Purple_place',-320,-20)
    scaleObject('plateL',0.85,0.85)
    addLuaSprite('plateL')

    makeLuaSprite('plateR',directory..'Purple_place',300,-320)
    scaleObject('plateR',0.6,0.6)
    addLuaSprite('plateR')
 
    makeAnimatedLuaSprite('static',directory..'static',0,0)
    addAnimationByPrefix('static','static','static',24,true)
    addLuaSprite('static')
    scaleObject('static',2,1.5)
    screenCenter('static','xy')
    setProperty('static.alpha',0)

    makeAnimatedLuaSprite('staticover',directory..'static-overlay',-200,-450)
    addAnimationByPrefix('staticover','static','static-overlay',24,true)
    addLuaSprite('staticover')
    scaleObject('staticover',1.2,1.2)
    setProperty('staticover.alpha',0)

    setProperty('background2.alpha',0)
    setProperty('questionareBackground.visible',false)
    setProperty('plateL.offset.x',-64)
    setProperty('plateR.offset.x',-32)
    setProperty('plateR.offset.y',-16)

    
end 
function onStepHit()
    if curStep == 543 then
        doTweenAlpha('statover','staticover',0.5,0.7,'expoOut')

        doTweenAlpha('hello','background2',1,1,'expoOut')
        doTweenAlpha('goodbye','background1',0,1,'expoOut')
    end
    if curStep == 547 then
        doTweenAlpha('statover','staticover',0,0.2,'expoOut')
    end
end
function onCreatePost()
    addHaxeLibrary('FlxCamera', 'flixel')
    runHaxeCode([[
        strumHUD1 = new FlxCamera();
        strumHUD2 = new FlxCamera();
        strumHUD1.bgColor = 0x00000000;
        strumHUD2.bgColor = 0x00000000;
        cutsceneCam = new FlxCamera();
        cutsceneCam.bgColor = 0x00000000;
  
        FlxG.cameras.add(strumHUD1,false);
        FlxG.cameras.add(strumHUD2,false);
        FlxG.cameras.add(cutsceneCam,false);
        game.variables.set('strumHUD1', strumHUD1);
        game.variables.set('strumHUD2', strumHUD2);
        game.variables.set('cutsceneCam', cutsceneCam);
        
          
          for (i in 0...4) {
              game.strumLineNotes.members[i].cameras = [strumHUD1];
          }
          for (i in 4...8) {
              game.strumLineNotes.members[i].cameras = [strumHUD2];
          }
          for (note in game.unspawnNotes) 
          {
            if (note.mustPress) {
              note.cameras = [strumHUD2];
          } else {
              note.cameras = [strumHUD1];
      }
      };
      ]])
      setObjectCamera('static','strumHUD2')

    
    setProperty('camZooming',true)
    initLuaShader('pincushion')
    setSpriteShader('background1','pincushion')
    setSpriteShader('background2','pincushion')
    setShaderFloat('background1','distort',1.5)

    setProperty('gf.visible',false)
end
function staticalpha(alpha,time)
    doTweenAlpha('statictime','static',alpha,time,'cubeInOut')
end
function onEvent(n,v1,v2)
    if n == 'wiggle intensity' then
        setShaderFloat('background1','prob',v1)
    end
    if n == 'staticalpha' then
        staticalpha(v1,v2)
    end
end
function onUpdate()
    setShaderFloat('background1','time',os.clock())

    if mustHitSection then
        setProperty('defaultCamZoom',1.25)
    else
        setProperty('defaultCamZoom',1.1)
    end
end
    