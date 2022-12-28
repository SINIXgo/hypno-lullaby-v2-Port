function onCreate()
    makeLuaSprite('feralisleep', 'stages/feralisleep/feralisleep', -1200, -300);
    scaleObject('feralisleep', 0.9, 0.9);
    
    makeLuaSprite('BarradeArriba', '', 0, -650)--(-280) Maximo
     makeGraphic('BarradeArriba', 1280, 640, '000000')
    setObjectCamera('BarradeArriba', 'camHUD')
    addLuaSprite('BarradeArriba', true)

    makeLuaSprite('BarradeAbajo', '', 0, 700)--(400) Máximo
    makeGraphic('BarradeAbajo', 1280, 640, '000000')
    setObjectCamera('BarradeAbajo', 'camHUD')
    addLuaSprite('BarradeAbajo', true)

    
    addLuaSprite('feralisleep', false); 
    setProperty('camHUD.alpha', 0)
    setProperty('skipCountdown', true);
end

function onUpdatePost()
    setTextString("botplayTxt", "Botplay\nno te duermas!!")
    setPropertyFromGroup('opponentStrums',0,'alpha',0)
	setPropertyFromGroup('opponentStrums',1,'alpha',0)
	setPropertyFromGroup('opponentStrums',2,'alpha',0)
	setPropertyFromGroup('opponentStrums',3,'alpha',0)
end

function onStepHit()
if curStep==64 then
    doTweenAlpha('holaHUD','camHUD',1,0.2)
  end
if curStep==2213 then
        doTweenY('BarraNegra1', 'BarradeArriba', -280, 2.5, 'elasticOut')
        doTweenY('BarraNegra2', 'BarradeAbajo', 400, 2.5, 'elasticOut')
        end
if curStep==2234 then
        doTweenY('BarraNegra1', 'BarradeArriba', -650, 2.5, 'elasticOut')
        doTweenY('BarraNegra2', 'BarradeAbajo', 700, 2.5, 'elasticOut')
        end
if curStep==2256 then
        doTweenY('BarraNegra1', 'BarradeArriba', -280, 2.5, 'elasticOut')
        doTweenY('BarraNegra2', 'BarradeAbajo', 400, 2.5, 'elasticOut')
        end
if curStep==2275 then
        doTweenY('BarraNegra1', 'BarradeArriba', -650, 2.5, 'elasticOut')
        doTweenY('BarraNegra2', 'BarradeAbajo', 700, 2.5, 'elasticOut')
        end
if curStep==2294 then
        doTweenY('BarraNegra1', 'BarradeArriba', -280, 5, 'elasticOut')
        doTweenY('BarraNegra2', 'BarradeAbajo', 400, 5, 'elasticOut')
        end
if curStep==2320 then
        doTweenY('BarraNegra1', 'BarradeArriba', -650, 0.3, 'elasticOut')
        doTweenY('BarraNegra2', 'BarradeAbajo', 700, 0.3, 'elasticOut')
        end
end