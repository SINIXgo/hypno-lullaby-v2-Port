function onCreatePost()--Mejorado por Sinix (Yo p xd)
           setProperty('scoreTxt.visible', false)
       	setProperty('timeBarBG.visible', false)
       	setProperty('timeBar.visible', false)
       	setProperty('timeTxt.visible', false)

	       makeLuaText('scoreforever','Score: 0 • Accuracy: 0% • Portado Por Sinix • Combo Breaks: 0 • Rank: F',1280,0,0)       
	        setProperty('scoreforever.y',getProperty('scoreTxt.y'))
	       setProperty('scoreforever.x',getProperty('scoreTxt.x'))
	       setTextWidth('scoreforever',getTextWidth('scoreTxt'))
	       setTextAlignment('scoreforever','CENTER')
	       setTextSize('scoreforever', 18)
	       addLuaText('scoreforever')
	       setTextBorder('scoreforever',1.1, '000000')

           makeLuaText("NameSong",'', 1280, -6, 5)
           setTextSize('NameSong', 25);
           setProperty('NameSong.alpha', 1)
           setTextAlignment('NameSong', 'center') 
           addLuaText('NameSong')
           setObjectCamera('NameSong', 'hud');
           setTextBorder('NameSong',2,'000000')
           setTextString('NameSong',' - ' .. songName .. ' ['..difficultyName..'] - ')--Este code me tomó 30m aaaa

           makeLuaText("ForeverMarcadeAgua",'FOREVER ENGINE v0.3.1', 0, 1020, 5)
           setTextSize('ForeverMarcadeAgua', 20);
           setProperty('ForeverMarcadeAgua.alpha', 1)
           setTextAlignment('ForeverMarcadeAgua', 'center') 
           addLuaText('ForeverMarcadeAgua')
           setTextBorder('ForeverMarcadeAgua',2,'000000')
           setObjectCamera('ForeverMarcadeAgua', 'hud');
           
           setProperty('timeBarBG.visible', false)
           setProperty('timeBar.visible', false)
           setProperty('timeTxt.visible', false)          
            
            setObjectOrder('BarradeArriba', 0)
            setObjectOrder('BarradeAbajo', 1)
            setObjectOrder('barr', 2)
            setObjectOrder('barr1', 3)
            setObjectOrder('healthBarBG', 4)
            setObjectOrder('healthBar', 5)
            setObjectOrder('iconP1', 6)
            setObjectOrder('iconP2',7)
            
            if songName == 'Missingno' then 
               setTextString('NameSong',' - ????????? ['..difficultyName..'] - ')
           end

           if songName == 'Brimstone' then          
           makeLuaText("ForeverMarcadeAgua",'FOREVER ENGINE v1.5.9', 0, 1135, 3)
           setTextSize('ForeverMarcadeAgua', 20);
           setProperty('ForeverMarcadeAgua.alpha', 1)
           setTextAlignment('ForeverMarcadeAgua', 'center') 
           addLuaText('ForeverMarcadeAgua')
           setObjectCamera('ForeverMarcadeAgua', 'hud');
           setTextBorder('ForeverMarcadeAgua',1,'000000')
           setTextFont('ForeverMarcadeAgua', 'poke.ttf')

           makeLuaText('scoreforever','Score: 0 - Accuracy: 0% - Combo Breaks: 0 - Rank: F',1280,0,0)       
           setProperty('scoreforever.y',0)
	       setProperty('scoreforever.x',getProperty('scoreTxt.x')-20)
	       setTextWidth('scoreforever',getTextWidth('scoreTxt'))
	       setTextAlignment('scoreforever','CENTER')
	       setTextSize('scoreforever', 25)
	       addLuaText('scoreforever')
	       setTextFont('scoreforever', 'poke.ttf')
	       setTextBorder('scoreforever',1,'000000')
	
	      makeLuaText("NameSong",'', 1280, -6, 685)
           setTextSize('NameSong', 25);
           setProperty('NameSong.alpha', 1)
           setTextAlignment('NameSong', 'center') 
           addLuaText('NameSong')
           setObjectCamera('NameSong', 'hud');
           setTextString('NameSong',' - ' .. songName .. ' ['..difficultyName..'] - ')--Este code me tomó 30m aaaa
           setTextFont('NameSong', 'poke.ttf')    
          setTextBorder('NameSong',1,'000000')       
           end         
           
           if songName == "Isotope" or songName == "Insomnia" or songName == "Frostbite" or songName == "Amusia" or songName == "Cheated" or songName == "Dissension" or songName == 'Monochrome' then
           setProperty('ForeverMarcadeAgua.alpha', 0.5)
           setProperty('NameSong.alpha', 0.5)
           setProperty('scoreforever.alpha', 0.5)
           setProperty('healthBar.alpha', 0.7)
           setProperty('healthBarBG.alpha', 0.7)
    end
end

orden= 0
songNameRandom = {"Monochrome",'onochromeM','nochromeMo',"ochromeMon","chromeMono","hromeMonoc","romeMonoch","omeMonochr","meMonochro","eMonochrom"}
function onStepHit()
if songName == 'Missingno' then
if curStep == 380 then
setTextString('NameSong',' - ' .. songName .. ' ['..difficultyName..'] - ')
end
end
if not lowQuality then
if curStep >= 1664 then
if curStep % 1 == 0 then
orden=orden+1
if songName == 'Monochrome' then 
               setTextString('NameSong',' - ' .. songNameRandom[orden] .. ' ['..difficultyName..'] - ')
           end
end
end
end
end

function onUpdatePost()
setProperty('scoreforever.scale.x', getProperty('scoreTxt.scale.x'))
setProperty('scoreforever.scale.y', getProperty('scoreTxt.scale.y'))
if orden > 9 then
orden= 0
end
end

function onRecalculateRating()
	if ratingName == 'Perfect!!' then
	ratingName = 'S+'
	elseif ratingName == 'Sick!' then
	ratingName = 'S'
	elseif ratingName == 'Great' then
	ratingName = 'B'
	elseif ratingName == 'Good' then
	ratingName = 'C'
	elseif ratingName == 'Nice' then
	ratingName = 'D'
	elseif ratingName == 'Meh' then
	ratingName = 'D'
	elseif ratingName == 'Bruh' then
	ratingName = 'E'
	elseif ratingName == 'Bad' then
	ratingName = 'E'
	elseif ratingName == 'Shit' then
	ratingName = 'F'
	elseif ratingName == 'You Suck!' then
	ratingName = 'F'
end
	setTextString('scoreforever','Score: '..score..' • Accuracy: '..math.floor(rating * 100)..'% ['..ratingFC..'] • Combo Breaks: '..misses..' • Rank: '..ratingName)
	if songName == 'Brimstone' then 
	setTextString('scoreforever','Score: '..score..' - Accuracy: '..math.floor(rating * 100)..'% ['..ratingFC..'] - Combo Breaks: '..misses..' - Rank: '..ratingName)
	end
end
