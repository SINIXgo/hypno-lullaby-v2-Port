--Porque hacerlo tan complicado xd
--Codigo mas simple y facil de entender por Nickobelit
function onCreate()
makeLuaText('LyricAbajo','',1280,screenWidth/2 - 200,screenHeight/2 + 175);
setTextSize('LyricAbajo',20);
setTextAlignment('LyricAbajo','left'); 
setTextColor('LyricAbajo', 'ffffff')
setObjectCamera('LyricAbajo', 'other')
setTextFont('LyricAbajo', 'poketext.ttf')
setProperty('LyricAbajo.antialiasing',false)
addLuaText('LyricAbajo');

makeLuaText('LyricArriba','',1280,screenWidth/2 - 200,screenHeight/2 + 170);
setTextSize('LyricArriba',20);
setTextAlignment('LyricArriba','left');
setTextColor('LyricArriba', 'ff0000')
setObjectCamera('LyricArriba', 'other')
setTextFont('LyricArriba', 'poketext.ttf')
setProperty('LyricArriba.antialiasing',false)
addLuaText('LyricArriba');
end

function onStepHit()
    if songName == 'Isotope' then -- made by Jarcrafted Stuff (Youtube)
        if curStep == 234 then 
			setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') + 70)
			setTextString('LyricAbajo','      I a joke to you?')
			setTextString('LyricArriba','Am')
		elseif curStep == 237 then
			setTextString('LyricAbajo','Am    a joke to you?')
			setTextString('LyricArriba','      I')
		elseif curStep == 239 then
			setTextString('LyricAbajo','Am I    joke to you?')
			setTextString('LyricArriba','         a')
		elseif curStep == 242 then
			setTextString('LyricAbajo','Am I a          to you?')
			setTextString('LyricArriba','            joke')
		elseif curStep == 245 then
			setTextString('LyricAbajo','Am I a joke      you?')
			setTextString('LyricArriba','                     to')
		elseif curStep == 248 then
			setTextString('LyricAbajo','Am I a joke to')
			setTextString('LyricArriba','                           you?')
		elseif curStep == 258 then
			setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') - 70)
			setTextString('LyricAbajo',' ')
			setTextString('LyricArriba',' ')
		end
		if curStep == 1086 then
			setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') + 190)
			setTextString('LyricArriba','No.')
		elseif curStep == 1098 then
			setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') - 190)
			setTextString('LyricArriba',' ')
		end
    	if curStep == 1872 then
	        setTextString('LyricAbajo', '          took everything from me...')
		    setTextString('LyricArriba','They')
	    end
	    if curStep == 1875 then 
		   setTextString('LyricAbajo', 'They            everything from me...')
		   setTextString('LyricArriba','          took')
	    elseif curStep == 1879 then -- everything
           setTextString('LyricAbajo', 'They took                      from me...')
		   setTextString('LyricArriba','                    everything')
	    elseif curStep == 1885 then -- from
	    	setTextString('LyricAbajo', 'They took everything            me...')
	    	setTextString('LyricArriba','                                        from')
	    elseif curStep == 1888 then -- me...
	    	setTextString('LyricAbajo', 'They took everything from')
	    	setTextString('LyricArriba','                                                  me...')
	    end
	    if curStep == 1895 then 
		    setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') + 150)
	    	setTextString('LyricAbajo', '      VOICE,')
		    setTextString('LyricArriba','My')
	    elseif curStep == 1900 then
	     	setTextString('LyricAbajo', 'My')
	    	setTextString('LyricArriba','      VOICE,')
	    end

	    if curStep == 1912 then
	    	setTextString('LyricAbajo', '      FREEDOM,')
	    	setTextString('LyricArriba','My')
	    elseif curStep == 1918 then
	    	setTextString('LyricAbajo', 'My')
	    	setTextString('LyricArriba','      FREEDOM,')
	    end

	    if curStep == 1932 then -- My LEGACY,
	    	setTextString('LyricAbajo', '      LEGACY,')
	    	setTextString('LyricArriba','My')
	    elseif curStep == 1938 then
	    	setTextString('LyricAbajo', 'My')
	    	setTextString('LyricArriba','      LEGACY,')
	    end

	    if curStep == 1952 then 
	    	setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') - 150)
	    	setTextString('LyricAbajo', '        they replaced me with some')
	    	setTextString('LyricArriba','And')
	    elseif curStep == 1955 then
	    	setTextString('LyricAbajo', 'And           replaced me with some')
	    	setTextString('LyricArriba','        they')
	    elseif curStep == 1957 then
	    	setTextString('LyricAbajo', 'And they                   me with some')
	    	setTextString('LyricArriba','                 replaced')
	    elseif curStep == 1963 then
	    	setTextString('LyricAbajo', 'And they replaced       with some')
	    	setTextString('LyricArriba','                                  me')
	    elseif curStep == 1965 then
	    	setTextString('LyricAbajo', 'And they replaced me          some')
	    	setTextString('LyricArriba','                                        with')
	    elseif curStep == 1969 then
	    	setTextString('LyricAbajo', 'And they replaced me with')
	    	setTextString('LyricArriba','                                                some')
	    end

	    if curStep == 1978 then -- blue... haired... KID.
		   setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') + 150)
		   setTextString('LyricAbajo', ' ')
		   setTextString('LyricArriba','blue...')
	    elseif curStep == 1984 then -- literally 1984
	    	setTextString('LyricAbajo', ' ')
	    	setTextString('LyricArriba','haired...')
	    elseif curStep == 1991 then
	    	setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') + 20)
	     	setTextString('LyricAbajo', ' ')
	    	setTextString('LyricArriba','KID.')
	    elseif curStep == 2000 then
	        removeLuaText('LyricAbajo')
	        removeLuaText('LyricArriba')
	    end
    end
-- section by laztrix
if songName == 'Dissension' then
	if curStep == 906 then
		setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') + 120)
	    setTextString('LyricAbajo','          bye.')
	    setTextString('LyricArriba','Good')
    elseif curStep == 908 then
		setTextString('LyricAbajo','Good    ')
	    setTextString('LyricArriba','          bye.')
	elseif curStep == 912 then
		removeLuaText('LyricAbajo')
	    removeLuaText('LyricArriba')
	end
end

    if songName == 'Shitno' then 
        --its a mess i know right?
if curStep == 88 then
	setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') + 160)
	setTextString('LyricAbajo','      cold...')
	setTextString('LyricArriba','So')
elseif curStep == 94 then
	setTextString('LyricAbajo','So')
	setTextString('LyricArriba','      cold...')
elseif curStep == 109 then
	setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') - 60)
	setTextString('LyricAbajo','       is it so cold?')
	setTextString('LyricArriba','Why')
elseif curStep == 113 then
	setTextString('LyricAbajo','Why     it so cold?')
	setTextString('LyricArriba','       is')
elseif curStep == 115 then
	setTextString('LyricAbajo','Why is     so cold?')
	setTextString('LyricArriba','           it')
elseif curStep == 117 then
	setTextString('LyricAbajo','Why is it       cold?')
	setTextString('LyricArriba','               so')
elseif curStep == 120 then
	setTextString('LyricAbajo','Why is it so    ')
	setTextString('LyricArriba','                     cold?')
elseif curStep == 124 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
end

if curStep == 568 then 
	setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') - 100)
	setTextString('LyricAbajo','        away from me you freak!')
	setTextString('LyricArriba','Get')
elseif curStep == 576 then
	setTextString('LyricAbajo','Get           from me you freak!')
	setTextString('LyricArriba','        away')
elseif curStep == 580 then
	setTextString('LyricAbajo','Get away            me you freak!')
	setTextString('LyricArriba','                  from')
elseif curStep == 582 then
	setTextString('LyricAbajo','Get away from       you freak!')
	setTextString('LyricArriba','                            me')
elseif curStep == 584 then
	setTextString('LyricAbajo','Get away from me         freak!')
	setTextString('LyricArriba','                                  you')
elseif curStep == 586 then
	setTextString('LyricAbajo','Get away from me you')
	setTextString('LyricArriba','                                         freak!')	
elseif curStep == 592 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
end
if curStep == 2064 then 
	setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') + 90)
	setTextString('LyricAbajo','            me ALONE!')
	setTextString('LyricArriba','Leave')
elseif curStep == 2068 then
	setTextString('LyricAbajo','Leave       ALONE!')
	setTextString('LyricArriba','            me')
elseif curStep == 2070 then
	setTextString('LyricAbajo','Leave me')
	setTextString('LyricArriba','                  ALONE!')
elseif curStep == 2078 then
	removeLuaText('LyricAbajo')
    removeLuaText('LyricArriba')
end
end
--De aqui hasta abajo son secciones hechas por Nickobelit (Yo p)
if songName == 'Bygone-Purpose' then 
if curStep == 701 then
	setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') +50)
	setTextString('LyricAbajo',"         gonna be okay!")
	setTextString('LyricArriba',"I'ts")
elseif curStep == 704 then
	setTextString('LyricAbajo',"I'ts             be okay!")
	setTextString('LyricArriba',"         gonna")
elseif curStep == 706 then
	setTextString('LyricAbajo',"I'ts gonna       okay!")
	setTextString('LyricArriba',"                     be")
elseif curStep == 708 then
	setTextString('LyricAbajo',"I'ts gonna be")
	setTextString('LyricArriba',"                          okay!")
elseif curStep == 714 then
	removeLuaText('LyricAbajo')
    removeLuaText('LyricArriba')
end
  end 
  if songName == 'Monochrome' then 
if curStep == 368 then
	setProperty('LyricAbajo.x', getProperty('LyricAbajo.x') +130)
	setTextString('LyricAbajo',"        DEAD!")
	setTextString('LyricArriba',"I'M")
elseif curStep == 376 then
	setTextString('LyricAbajo',"I'M")
	setTextString('LyricArriba',"        DEAD!")
elseif curStep == 384 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
end
if curStep == 1144 then
	setTextString('LyricAbajo',"        DEAD!")
	setTextString('LyricArriba',"I'M")
elseif curStep == 1152 then
	setTextString('LyricAbajo',"I'M")
	setTextString('LyricArriba',"        DEAD!")
elseif curStep == 1160 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
end 
  if curStep == 1608 then
	setTextString('LyricAbajo',"      MORE.")
	setTextString('LyricArriba',"NO")
elseif curStep == 1616 then
	setTextString('LyricAbajo',"NO")
	setTextString('LyricArriba',"      MORE.")
elseif curStep == 1632 then
	removeLuaText('LyricAbajo')
    removeLuaText('LyricArriba')
end
  end 
  if songName == 'Googar' then 
if curStep == 6 then
	setProperty('LyricAbajo.x', 530)
	setTextString('LyricAbajo',"          shut up!")
	setTextString('LyricArriba',"Grrr")
elseif curStep == 12 then
	setTextString('LyricAbajo',"Grrr          up!")
	setTextString('LyricArriba',"          shut")
elseif curStep == 14 then
	setTextString('LyricAbajo',"Grrr shut")
	setTextString('LyricArriba',"                   up!")
elseif curStep == 18 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
end
if curStep == 29 then
    setProperty('LyricAbajo.x', 270)
	setTextString('LyricAbajo',"        f*cking diapered bastard is the Anti-Christ!!")
	setTextString('LyricArriba',"This")
elseif curStep == 31 then
	setTextString('LyricAbajo',"This               diapered bastard is the Anti-Christ!!")
	setTextString('LyricArriba',"        f*cking")
elseif curStep == 36 then
	setTextString('LyricAbajo',"This f*cking                  bastard is the Anti-Christ!!")
	setTextString('LyricArriba',"                      diapered")
elseif curStep == 40 then
	setTextString('LyricAbajo',"This f*cking diapered                  is the Anti-Christ!!")
	setTextString('LyricArriba',"                                        bastard")
elseif curStep == 45 then
	setTextString('LyricAbajo',"This f*cking diapered bastard             Anti-Christ!!")
	setTextString('LyricArriba',"                                                         is the")
elseif curStep == 47 then
	setTextString('LyricAbajo',"This f*cking diapered bastard is the          -Christ!!")
	setTextString('LyricArriba',"                                                                    Anti")
elseif curStep == 52 then
	setTextString('LyricAbajo',"This f*cking diapered bastard is the Anti")
	setTextString('LyricArriba',"                                                                            -Christ!!")
elseif curStep == 58 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
end
if curStep == 343 then
	setProperty('LyricAbajo.x', 520)
	setTextString('LyricAbajo',"*crying moment*")
	setTextString('LyricArriba',"")
elseif curStep == 372 then
    setProperty('LyricAbajo.x', 535)
    setTextString('LyricAbajo',"           it stop!")
	setTextString('LyricArriba',"Make")
elseif curStep == 374 then
    setTextString('LyricAbajo',"Make      stop!")
	setTextString('LyricArriba',"           it")
elseif curStep == 376 then
    setTextString('LyricAbajo',"Make it")
	setTextString('LyricArriba',"              stop!")
elseif curStep == 387 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
	end
if curStep == 402 then
    setProperty('LyricAbajo.x', 365)
	setTextString('LyricAbajo',"      any of the haters looking at this...")
	setTextString('LyricArriba',"To")
elseif curStep == 404 then
    setTextString('LyricAbajo',"To        of the haters looking at this...")
	setTextString('LyricArriba',"      any")
elseif curStep == 406 then
    setTextString('LyricAbajo',"To any      the haters looking at this...")
	setTextString('LyricArriba',"             of")
elseif curStep == 407 then
    setTextString('LyricAbajo',"To any of         haters looking at this...")
	setTextString('LyricArriba',"                   the")
elseif curStep == 408 then
	setTextString('LyricAbajo',"To any of the              looking at this...")
	setTextString('LyricArriba',"                         haters")
elseif curStep == 412 then
	setTextString('LyricAbajo',"To any of the haters              at this...")
	setTextString('LyricArriba',"                                       looking")
elseif curStep == 414 then
	setTextString('LyricAbajo',"To any of the haters looking      this...")
	setTextString('LyricArriba',"                                                    at")
elseif curStep == 417 then
	setTextString('LyricAbajo',"To any of the haters looking at")
	setTextString('LyricArriba',"                                                         this...")
elseif curStep == 423 then
    setProperty('LyricAbajo.x', 440)
	setTextString('LyricAbajo',"          forehead is LARGE!")
	setTextString('LyricArriba',"Your")
elseif curStep == 425 then
	setTextString('LyricAbajo',"Your                    is LARGE!")
	setTextString('LyricArriba',"          forehead")
elseif curStep == 429 then
	setTextString('LyricAbajo',"Your forehead      LARGE!")
	setTextString('LyricArriba',"                             is")  
elseif curStep == 431 then
	setTextString('LyricAbajo',"Your forehead is")
	setTextString('LyricArriba',"                                LARGE!")        
elseif curStep == 438 then
	setTextString('LyricAbajo',"         ,extremely MASSIVE")
	setTextString('LyricArriba',"Like")       
elseif curStep == 443 then
	setTextString('LyricAbajo',"Like                      MASSIVE")
	setTextString('LyricArriba',"         ,extremely")     
elseif curStep == 452 then
	setTextString('LyricAbajo',"Like,extremely")
	setTextString('LyricArriba',"                            MASSIVE")                                              
elseif curStep == 460 then     
    setProperty('LyricAbajo.x', 300)
    setTextString('LyricAbajo',"         ,I can compare it to the size of a Wailord...")
	setTextString('LyricArriba',"Like")
elseif curStep == 462 then
    setTextString('LyricAbajo',"Like      can compare it to the size of a Wailord...")
	setTextString('LyricArriba',"         ,I")
elseif curStep == 463 then
    setTextString('LyricAbajo',"Like ,I          compare it to the size of a Wailord...")
	setTextString('LyricArriba',"             can")
elseif curStep == 464 then
    setTextString('LyricAbajo',"Like ,I can                   it to the size of a Wailord...")
	setTextString('LyricArriba',"                    compare")
elseif curStep == 467 then
	setTextString('LyricAbajo',"Like ,I can compare       to the size of a Wailord...")
	setTextString('LyricArriba',"                                     it")
elseif curStep == 468 then
	setTextString('LyricAbajo',"Like ,I can compare it        the size of a Wailord...")
	setTextString('LyricArriba',"                                         to")
elseif curStep == 469 then
	setTextString('LyricAbajo',"Like ,I can compare it to          size of a Wailord...")
	setTextString('LyricArriba',"                                              the")
elseif curStep == 471 then
	setTextString('LyricAbajo',"Like ,I can compare it to the          of a Wailord...")
	setTextString('LyricArriba',"                                                     size")
elseif curStep == 474 then
	setTextString('LyricAbajo',"Like ,I can compare it to the size       a Wailord...")
	setTextString('LyricArriba',"                                                             of")
elseif curStep == 475 then
	setTextString('LyricAbajo',"Like ,I can compare it to the size of      Wailord...")
	setTextString('LyricArriba',"                                                                   a")
elseif curStep == 476 then
	setTextString('LyricAbajo',"Like ,I can compare it to the size of a")
	setTextString('LyricArriba',"                                                                      Wailord...")
elseif curStep == 487 then
    setProperty('LyricAbajo.x', 400)
    setTextString('LyricAbajo',"               pretty big if you ask me")
	setTextString('LyricArriba'," That's")
elseif curStep == 489 then
    setTextString('LyricAbajo',"That's               big if you ask me")
	setTextString('LyricArriba',"              pretty")
elseif curStep == 491 then
    setTextString('LyricAbajo',"That's pretty          if you ask me")
	setTextString('LyricArriba',"                             big")
elseif curStep == 492 then
    setTextString('LyricAbajo',"That's pretty big       you ask me")
	setTextString('LyricArriba',"                                  if")
elseif curStep == 493 then
    setTextString('LyricAbajo',"That's pretty big if         ask me")
	setTextString('LyricArriba',"                                     you")
elseif curStep == 494 then
    setTextString('LyricAbajo',"That's pretty big if you         me")
	setTextString('LyricArriba',"                                             ask")
elseif curStep == 496 then
    setTextString('LyricAbajo',"That's pretty big if you ask")
	setTextString('LyricArriba',"                                                    me")
elseif curStep == 504 then
    setProperty('LyricAbajo.x', 575)
    setTextString('LyricAbajo',"")
	setTextString('LyricArriba',"So...")
elseif curStep == 518 then
    setProperty('LyricAbajo.x', 505)
	setTextString('LyricAbajo',"              still here...")
	setTextString('LyricArriba',"You're")    
elseif curStep == 520 then
	setTextString('LyricAbajo',"You're        here...")
	setTextString('LyricArriba',"              still")    
elseif curStep == 523 then
	setTextString('LyricAbajo',"You're still")
	setTextString('LyricArriba',"                     here...")  
elseif curStep == 529 then
	setTextString('LyricAbajo',"              you bored?")
	setTextString('LyricArriba',"Aren't")   
elseif curStep == 532 then
	setTextString('LyricAbajo',"Aren't         bored?")
	setTextString('LyricArriba',"              you")  
elseif curStep == 535 then
	setTextString('LyricAbajo',"Aren't you")
	setTextString('LyricArriba',"                     bored?") 
elseif curStep == 547 then
    setProperty('LyricAbajo.x', 575)
	setTextString('LyricAbajo',"      on")
	setTextString('LyricArriba',"Go")   
elseif curStep == 548 then
	setTextString('LyricAbajo',"Go")
	setTextString('LyricArriba',"      on")  
elseif curStep == 552 then
	setTextString('LyricAbajo'," ")
	setTextString('LyricArriba',"Shoo") 
elseif curStep == 557 then
    setProperty('LyricAbajo.x', 545)
	setTextString('LyricAbajo',"        outta here")
	setTextString('LyricArriba',"Get")   
elseif curStep == 558 then    
	setTextString('LyricAbajo',"Get             here")
	setTextString('LyricArriba',"        outta")  
elseif curStep == 560 then
	setTextString('LyricAbajo',"Get outta")
	setTextString('LyricArriba',"                   here") 
elseif curStep == 565 then
    setProperty('LyricAbajo.x', 575)
	setTextString('LyricAbajo',"      on")
	setTextString('LyricArriba',"Go")   
elseif curStep == 566 then
	setTextString('LyricAbajo',"Go")
	setTextString('LyricArriba',"      on")  
end
end
  if songName == 'Safety Lullaby' then --Empieza la Tortura :( xd
if curStep == 64 then
	setProperty('LyricAbajo.x', 490)
	setTextString('LyricAbajo',"            little Girlfriend")
	setTextString('LyricArriba',"Come,")
elseif curStep == 68 then
	setTextString('LyricAbajo',"Come,           Girlfriend")
	setTextString('LyricArriba',"            little")
elseif curStep == 72 then
	setTextString('LyricAbajo',"Come, little        friend")
	setTextString('LyricArriba',"                     Girl")
elseif curStep == 76 then
	setTextString('LyricAbajo',"Come, little Girl")
	setTextString('LyricArriba',"                            friend")
end
if curStep == 80 then
	setProperty('LyricAbajo.x', 525)
	setTextString('LyricAbajo',"            with me...")
	setTextString('LyricArriba',"Come,")
elseif curStep == 84 then
	setTextString('LyricAbajo',"Come,          me...")
	setTextString('LyricArriba',"            with")
elseif curStep == 88 then
	setTextString('LyricAbajo',"Come, with")
	setTextString('LyricArriba',"                    me...")
elseif curStep == 94 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
end
if curStep == 95 then
	setProperty('LyricAbajo.x', 440)
	setTextString('LyricAbajo',"       friend is waiting steadily")
	setTextString('LyricArriba',"Boy")
elseif curStep == 98 then
	setTextString('LyricAbajo',"Boy             is waiting steadily")
	setTextString('LyricArriba',"       friend")
elseif curStep == 101 then
	setTextString('LyricAbajo',"Boyfriend     waiting steadily")
	setTextString('LyricArriba',"                   is")
elseif curStep == 104 then
	setTextString('LyricAbajo',"Boyfriend is        ting steadily")
	setTextString('LyricArriba',"                       wai")
elseif curStep == 107 then
	setTextString('LyricAbajo',"Boyfriend is wai        steadily")
	setTextString('LyricArriba',"                             ting")
elseif curStep == 111 then
	setTextString('LyricAbajo',"Boyfriend is waiting          dily")
	setTextString('LyricArriba',"                                    stea")
elseif curStep == 115  then
	setTextString('LyricAbajo',"Boyfriend is waiting stea    ly")
	setTextString('LyricArriba',"                                             di")
elseif curStep == 119 then
	setTextString('LyricAbajo',"Boyfriend is waiting steadi")
	setTextString('LyricArriba',"                                                 ly")
elseif curStep == 126 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
  end 
  --Alone at night,now let us run...
  if curStep == 190 then
    setProperty('LyricAbajo.x', 425)
	setTextString('LyricAbajo',"    lone at night, now let us run...")
	setTextString('LyricArriba',"A")
	elseif curStep == 192 then
	setTextString('LyricAbajo',"A        at night, now let us run...")
	setTextString('LyricArriba',"   lone")
elseif curStep == 196 then
	setTextString('LyricAbajo',"Alone     night, now let us run...")
	setTextString('LyricArriba',"          at")
elseif curStep == 200 then
	setTextString('LyricAbajo',"Alone at           now let us run...")
	setTextString('LyricArriba',"               night,")
elseif curStep == 204 then
	setTextString('LyricAbajo',"Alone at night,         let us run...")
	setTextString('LyricArriba',"                          now")
elseif curStep == 208 then
	setTextString('LyricAbajo',"Alone at night, now       us run...")
	setTextString('LyricArriba',"                                  let")
elseif curStep == 210 then
	setTextString('LyricAbajo',"Alone at night, now let      run...")
	setTextString('LyricArriba',"                                        us")
elseif curStep == 216  then
	setTextString('LyricAbajo',"Alone at night, now let us")
	setTextString('LyricArriba',"                                             run...")
  end 
  -- With Hypno, you'll have soo much fun!
  if curStep == 222 then
    setProperty('LyricAbajo.x', 400)
	setTextString('LyricAbajo',"        Hypno, you'll have soo much fun!")
	setTextString('LyricArriba',"With")
	elseif curStep == 224 then
	setTextString('LyricAbajo',"With        no, you'll have soo much fun!")
	setTextString('LyricArriba',"        Hyp")
elseif curStep == 228 then
	setTextString('LyricAbajo',"With Hyp        you'll have soo much fun!")
	setTextString('LyricArriba',"                no,")
elseif curStep == 232 then
	setTextString('LyricAbajo',"With Hypno,             have soo much fun!")
	setTextString('LyricArriba',"                      you'll")
elseif curStep == 236 then
	setTextString('LyricAbajo',"With Hypno, you'll           soo much fun!")
	setTextString('LyricArriba',"                               have")
elseif curStep == 240 then
	setTextString('LyricAbajo',"With Hypno, you'll have          much fun!")
	setTextString('LyricArriba',"                                         soo")
elseif curStep == 244 then
	setTextString('LyricAbajo',"With Hypno, you'll have soo            fun!")
	setTextString('LyricArriba',"                                                much")
elseif curStep == 248  then
	setTextString('LyricAbajo',"With Hypno, you'll have soo much")
	setTextString('LyricArriba',"                                                          fun!")
elseif curStep == 256 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
  end 
  --Oh little Girlfriend, please don't cry!
  if curStep == 320 then
    setProperty('LyricAbajo.x', 370)
	setTextString('LyricAbajo',"      little Girlfriend, please don't cry!")
	setTextString('LyricArriba',"Oh")
elseif curStep == 324 then
	setTextString('LyricAbajo',"Oh           Girlfriend, please don't cry!")
	setTextString('LyricArriba',"      little")
elseif curStep == 328 then
	setTextString('LyricAbajo',"Oh little         friend, please don't cry!")
	setTextString('LyricArriba',"               Girl")
elseif curStep == 332 then
	setTextString('LyricAbajo',"Oh little Girl               please don't cry!")
	setTextString('LyricArriba',"                      friend,")
elseif curStep == 336 then
	setTextString('LyricAbajo',"Oh little Girlfriend,              don't cry!")
	setTextString('LyricArriba',"                                  please")
elseif curStep == 340 then
	setTextString('LyricAbajo',"Oh little Girlfriend, please            cry!")
	setTextString('LyricArriba',"                                               don't")
elseif curStep == 344 then
	setTextString('LyricAbajo',"Oh little Girlfriend, please don't")
	setTextString('LyricArriba',"                                                          cry!")
  end 
  --Hypno wouldn't hurt a fly
  if curStep == 352 then
    setProperty('LyricAbajo.x', 450)
	setTextString('LyricAbajo',"        no wouldn't hurt a fly!")
	setTextString('LyricArriba',"Hyp")
elseif curStep == 356 then
	setTextString('LyricAbajo',"Hyp      wouldn't hurt a fly!")
	setTextString('LyricArriba',"        no")
elseif curStep == 360 then
	setTextString('LyricAbajo',"Hypno                 hurt a fly!")
	setTextString('LyricArriba',"            wouldn't")
elseif curStep == 367 then
	setTextString('LyricAbajo',"Hypno wouldn't         a fly!")
	setTextString('LyricArriba',"                           hurt")
elseif curStep == 373 then
	setTextString('LyricAbajo',"Hypno wouldn't hurt    fly!")
	setTextString('LyricArriba',"                                     a")
elseif curStep == 376 then
	setTextString('LyricAbajo',"Hypno wouldn't hurt a")
	setTextString('LyricArriba',"                                       fly!")
elseif curStep == 384 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
  end  
--Your/ fath/er/ clear/ly/ doesn't/ get... 
  if curStep == 446 then
    setProperty('LyricAbajo.x', 400)
	setTextString('LyricAbajo',"         father clearly doesn't get...")
	setTextString('LyricArriba',"Your")
elseif curStep == 448 then
	setTextString('LyricAbajo',"Your           er clearly doesn't get...")
	setTextString('LyricArriba',"          fath")
elseif curStep == 452 then
	setTextString('LyricAbajo',"Your fath      clearly doesn't get...")
	setTextString('LyricArriba',"                   er")
elseif curStep == 455 then
	setTextString('LyricAbajo',"Your father            ly doesn't get...")
	setTextString('LyricArriba',"                        clear")
elseif curStep == 460 then
	setTextString('LyricAbajo',"Your father clear     doesn't get...")
	setTextString('LyricArriba',"                                  ly")
elseif curStep == 464 then
	setTextString('LyricAbajo',"Your father clearly                 get...")
	setTextString('LyricArriba',"                                     doesn't")
elseif curStep == 470 then
	setTextString('LyricAbajo',"Your father clearly doesn't")
	setTextString('LyricArriba',"                                                    get...")
  end 
--Deep/ in/ the/ fore/st,/ BF/ I/ met!
  if curStep == 480 then
    setProperty('LyricAbajo.x', 430)
	setTextString('LyricAbajo',"           in the forest, BF I met!")
	setTextString('LyricArriba',"Deep")
elseif curStep == 484 then
	setTextString('LyricAbajo',"Deep    the forest, BF I met!")
	setTextString('LyricArriba',"          in")
elseif curStep == 486 then
	setTextString('LyricAbajo',"Deep in         forest, BF I met!")
	setTextString('LyricArriba',"               the")
elseif curStep == 488 then
	setTextString('LyricAbajo',"Deep in the           st, BF I met!")
	setTextString('LyricArriba',"                     fore")
elseif curStep == 492 then
    setTextString('LyricAbajo',"Deep in the fore       BF I met!")
	setTextString('LyricArriba',"                               st,")
elseif curStep == 496 then
    setTextString('LyricAbajo',"Deep in the forest,       I met!")
	setTextString('LyricArriba',"                                    BF")
elseif curStep == 500 then
	setTextString('LyricAbajo',"Deep in the forest, BF    met!")
	setTextString('LyricArriba',"                                          I")
elseif curStep == 504 then
	setTextString('LyricAbajo',"Deep in the forest, BF I")
	setTextString('LyricArriba',"                                             met!")
elseif curStep == 512 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
  end
-- Oh/ little/ Girl/friend,/ please/ don't/ squirm!
if curStep == 576 then
    setProperty('LyricAbajo.x', 355)
	setTextString('LyricAbajo',"      little Girlfriend, please don't squirm!")
	setTextString('LyricArriba',"Oh")
elseif curStep == 580 then
	setTextString('LyricAbajo',"Oh           Girlfriend, please don't squirm!")
	setTextString('LyricArriba',"      little")
elseif curStep == 583 then
	setTextString('LyricAbajo',"Oh little         friend, please don't squirm!")
	setTextString('LyricArriba',"               Girl")
elseif curStep == 587 then
	setTextString('LyricAbajo',"Oh little Girl               please don't squirm!")
	setTextString('LyricArriba',"                      friend,")
elseif curStep == 592 then
	setTextString('LyricAbajo',"Oh little Girlfriend,              don't squirm!")
	setTextString('LyricArriba',"                                  please")
elseif curStep == 596 then
	setTextString('LyricAbajo',"Oh little Girlfriend, please            squirm!")
	setTextString('LyricArriba',"                                               don't")
elseif curStep == 600 then
	setTextString('LyricAbajo',"Oh little Girlfriend, please don't")
	setTextString('LyricArriba',"                                                          squirm!")
  end 
  --Those/ ropes/ I/ know/ will/ hold/ you/ firm...
  if curStep == 606 then
   setProperty('LyricAbajo.x', 365)
	setTextString('LyricAbajo',"             ropes I know will hold you firm...")
	setTextString('LyricArriba',"Those")
elseif curStep == 608 then
	setTextString('LyricAbajo',"Those             I know will hold you firm...")
	setTextString('LyricArriba',"            ropes")
elseif curStep == 612 then
	setTextString('LyricAbajo',"Those ropes    know will hold you firm...")
	setTextString('LyricArriba',"                         I")
elseif curStep == 614 then
	setTextString('LyricAbajo',"Those ropes I            will hold you firm...")
	setTextString('LyricArriba',"                            know")
elseif curStep == 620 then
	setTextString('LyricAbajo',"Those ropes I know        hold you firm...")
	setTextString('LyricArriba',"                                      will")
elseif curStep == 624 then
	setTextString('LyricAbajo',"Those ropes I know will          you firm...")
	setTextString('LyricArriba',"                                           hold")
elseif curStep == 628 then
	setTextString('LyricAbajo',"Those ropes I know will hold        firm...")
	setTextString('LyricArriba',"                                                   you")
 elseif curStep == 632 then
	setTextString('LyricAbajo',"Those ropes I know will hold you")
	setTextString('LyricArriba',"                                                          firm...")
  end
 --Hyp/no/ tells/ you/ this/ is/ true...
  if curStep == 640 then
    setProperty('LyricAbajo.x', 420)
	setTextString('LyricAbajo',"        no tells you this is true...")
	setTextString('LyricArriba',"Hyp")
elseif curStep == 644 then
	setTextString('LyricAbajo',"Hyp       tells you this is true...")
	setTextString('LyricArriba',"        no")
elseif curStep == 648 then
	setTextString('LyricAbajo',"Hypno           you this is true...")
	setTextString('LyricArriba',"            tells")
elseif curStep == 652 then
	setTextString('LyricAbajo',"Hypno tells          this is true...")
	setTextString('LyricArriba',"                      you")
elseif curStep == 656 then
	setTextString('LyricAbajo',"Hypno tells you         is true...")
	setTextString('LyricArriba',"                            this")
elseif curStep == 658 then
	setTextString('LyricAbajo',"Hypno tells you this      true...")
	setTextString('LyricArriba',"                                    is")
elseif curStep == 663 then
	setTextString('LyricAbajo',"Hypno tells you this is")
	setTextString('LyricArriba',"                                       true...")
  end 
--But/ sad/ly,/ Hyp/no/ lied/ to/ you!
  if curStep == 670 then
    setProperty('LyricAbajo.x', 425)
	setTextString('LyricAbajo',"        sadly, Hypno lied to you!")
	setTextString('LyricArriba',"But")
elseif curStep == 672 then
	setTextString('LyricAbajo',"But         ly, Hypno lied to you!")
	setTextString('LyricArriba',"       sad")
elseif curStep == 676 then
	setTextString('LyricAbajo',"But sad      Hypno lied to you!")
	setTextString('LyricArriba',"               ly,")
elseif curStep == 680 then
	setTextString('LyricAbajo',"But sadly,         no lied to you!")
	setTextString('LyricArriba',"                   Hyp")
elseif curStep == 685 then
	setTextString('LyricAbajo',"But sadly, Hyp      lied to you!")
	setTextString('LyricArriba',"                          no")
elseif curStep == 688 then
	setTextString('LyricAbajo',"But sadly, Hypno        to you!")
	setTextString('LyricArriba',"                               lied")
elseif curStep == 694 then
	setTextString('LyricAbajo',"But sadly, Hypno lied      you!")
	setTextString('LyricArriba',"                                     to")
elseif curStep == 696 then
	setTextString('LyricAbajo',"But sadly, Hypno lied to")
	setTextString('LyricArriba',"                                            you!")
elseif curStep == 705 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
  end
--Oh/ little/ Girl/friend,/ you/ shall/ not/ leave...
if curStep == 832 then
    setProperty('LyricAbajo.x', 358)
	setTextString('LyricAbajo',"      little Girlfriend, you shall not leave...")
	setTextString('LyricArriba',"Oh")
elseif curStep == 836 then
	setTextString('LyricAbajo',"Oh           Girlfriend, you shall not leave...")
	setTextString('LyricArriba',"      little")
elseif curStep == 840 then
	setTextString('LyricAbajo',"Oh little         friend, you shall not leave...")
	setTextString('LyricArriba',"               Girl")
elseif curStep == 844 then
	setTextString('LyricAbajo',"Oh little Girl               you shall not leave...")
	setTextString('LyricArriba',"                      friend,")
elseif curStep == 846 then
	setTextString('LyricAbajo',"Oh little Girlfriend,         shall not leave...")
	setTextString('LyricArriba',"                                  you")
elseif curStep == 848 then
	setTextString('LyricAbajo',"Oh little Girlfriend, you          not leave...")
	setTextString('LyricArriba',"                                         shall")
elseif curStep == 852 then
	setTextString('LyricAbajo',"Oh little Girlfriend, you shall          leave...")
	setTextString('LyricArriba',"                                                   not")
elseif curStep == 855 then
	setTextString('LyricAbajo',"Oh little Girlfriend, you shall not")
	setTextString('LyricArriba',"                                                         leave...")
  end 
--Your/ fath/er/ for/ you/ will/ never/ grieve!
  if curStep == 862 then
    setProperty('LyricAbajo.x', 365)
	setTextString('LyricAbajo',"          father for you will never grieve!")
	setTextString('LyricArriba',"Your")
elseif curStep == 864 then
	setTextString('LyricAbajo',"Your           er for you will never grieve!")
	setTextString('LyricArriba',"          fath")
elseif curStep == 867 then
	setTextString('LyricAbajo',"Your fath      for you will never grieve!")
	setTextString('LyricArriba',"                   er")
elseif curStep == 869 then
	setTextString('LyricAbajo',"Your father         you will never grieve!")
	setTextString('LyricArriba',"                        for")
elseif curStep == 872 then
	setTextString('LyricAbajo',"Your father for        will never grieve!")
	setTextString('LyricArriba',"                               you")
elseif curStep == 877 then
	setTextString('LyricAbajo',"Your father for you        never grieve!")
	setTextString('LyricArriba',"                                       will")
elseif curStep == 880 then
	setTextString('LyricAbajo',"Your father for you will             grieve!")
	setTextString('LyricArriba',"                                            never")
elseif curStep == 886 then
	setTextString('LyricAbajo',"Your father for you will never")
	setTextString('LyricArriba',"                                                       grieve!")
elseif curStep == 896 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
  end
--And/ minds/ un/ravel/ at/ the/ seams...
if curStep == 958 then
   setProperty('LyricAbajo.x', 385)
	setTextString('LyricAbajo',"        minds unravel at the seams...")
	setTextString('LyricArriba',"And")
elseif curStep == 960 then
	setTextString('LyricAbajo',"And             unravel at the seams...")
	setTextString('LyricArriba',"        minds")
elseif curStep == 964 then
	setTextString('LyricAbajo',"And minds       ravel at the seams...")
	setTextString('LyricArriba',"                   un")
elseif curStep == 968 then
	setTextString('LyricAbajo',"And minds un            at the seams...")
	setTextString('LyricArriba',"                        ravel")
elseif curStep == 976 then
	setTextString('LyricAbajo',"And minds unravel       the seams...")
	setTextString('LyricArriba',"                                 at")
elseif curStep == 978 then
	setTextString('LyricAbajo',"And minds unravel at         seams...")
	setTextString('LyricArriba',"                                      the")
elseif curStep == 982 then
	setTextString('LyricAbajo',"And minds unravel at the")
	setTextString('LyricArriba',"                                             seams...")
  end
--Allowing/ me/ to/ haunt/ their/ dreams!
if curStep == 990 then
    setProperty('LyricAbajo.x', 387)
	setTextString('LyricAbajo',"               me to haunt their dreams!")
	setTextString('LyricArriba',"Allowing")
elseif curStep == 999 then
	setTextString('LyricAbajo',"Allowing        to haunt their dreams!")
	setTextString('LyricArriba',"               me")
elseif curStep == 1004 then
	setTextString('LyricAbajo',"Allowing me        haunt their dreams!")
	setTextString('LyricArriba',"                     to")
elseif curStep == 1006 then
	setTextString('LyricAbajo',"Allowing me to             their dreams!")
	setTextString('LyricArriba',"                          haunt")
elseif curStep == 1012 then
	setTextString('LyricAbajo',"Allowing me to haunt            dreams!")
	setTextString('LyricArriba',"                                     their")
elseif curStep == 1016 then
	setTextString('LyricAbajo',"Allowing me to haunt their")
	setTextString('LyricArriba',"                                               dreams!")
elseif curStep == 1024 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
  end
--Sure/ly/ now,/ you/ must/ know...
if curStep == 1088 then
    setProperty('LyricAbajo.x', 415)
	setTextString('LyricAbajo',"          ly now, you must know...")
	setTextString('LyricArriba',"Sure")
elseif curStep == 1094 then
	setTextString('LyricAbajo',"Sure      now, you must know...")
	setTextString('LyricArriba',"          ly")
elseif curStep == 1096 then
	setTextString('LyricAbajo',"Surely           you must know...")
	setTextString('LyricArriba',"             now,")
elseif curStep == 1103 then
	setTextString('LyricAbajo',"Surely now,          must know...")
	setTextString('LyricArriba',"                      you")
elseif curStep == 1107 then
	setTextString('LyricAbajo',"Surely now, you           know...")
	setTextString('LyricArriba',"                            must")
elseif curStep == 1111 then
	setTextString('LyricAbajo',"Surely now, you must")
	setTextString('LyricArriba',"                                      know...")
  end
--That/ it/ is/ time/ for/ you/ to/ go!" 
if curStep == 1119 then
    setProperty('LyricAbajo.x', 425)
	setTextString('LyricAbajo',"         it is time for you to go!")
	setTextString('LyricArriba',"This")
elseif curStep == 1121 then
	setTextString('LyricAbajo',"This      is time for you to go!")
	setTextString('LyricArriba',"         it")
elseif curStep == 1123 then
	setTextString('LyricAbajo',"This it     time for you to go!")
	setTextString('LyricArriba',"            is")
elseif curStep == 1126 then
	setTextString('LyricAbajo',"This it is           for you to go!")
	setTextString('LyricArriba',"                 time")
elseif curStep == 1132 then
	setTextString('LyricAbajo',"This it is time         you to go!")
	setTextString('LyricArriba',"                        for")
elseif curStep == 1136 then
	setTextString('LyricAbajo',"This it is time for         to go!")
	setTextString('LyricArriba',"                                you")
elseif curStep == 1140 then
	setTextString('LyricAbajo',"This it is time for you       go!")
	setTextString('LyricArriba',"                                       to")
elseif curStep == 1144 then
	setTextString('LyricAbajo',"This it is time for you to")
	setTextString('LyricArriba',"                                             go!")
elseif curStep == 1152 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
  end
--Oh/ little/ Girl/friend,/ you/ weren't/ clever...
if curStep == 1216 then
    setProperty('LyricAbajo.x', 350)
	setTextString('LyricAbajo',"      little Girlfriend, you weren't clever...")
	setTextString('LyricArriba',"Oh")
elseif curStep == 1222 then
	setTextString('LyricAbajo',"Oh           Girlfriend, you weren't clever...")
	setTextString('LyricArriba',"      little")
elseif curStep == 1225 then
	setTextString('LyricAbajo',"Oh little         friend, you weren't clever...")
	setTextString('LyricArriba',"               Girl")
elseif curStep == 1229 then
	setTextString('LyricAbajo',"Oh little Girl               you weren't clever...")
	setTextString('LyricArriba',"                      friend,")
elseif curStep == 1231 then
	setTextString('LyricAbajo',"Oh little Girlfriend,         weren't clever...")
	setTextString('LyricArriba',"                                  you")
elseif curStep == 1233 then
	setTextString('LyricAbajo',"Oh little Girlfriend, you                 clever...")
	setTextString('LyricArriba',"                                         weren't")
elseif curStep == 1240 then
	setTextString('LyricAbajo',"Oh little Girlfriend, you weren't")
	setTextString('LyricArriba',"                                                         clever...")
  end
--Re/sist/ing/ me,/ only/ MAKES/ ME/ BITTER." 
if curStep == 1248 then
    setProperty('LyricAbajo.x', 368)
	setTextString('LyricAbajo',"      sisting me, only MAKES ME BITTER.")
	setTextString('LyricArriba',"Re")
elseif curStep == 1250 then
	setTextString('LyricAbajo',"Re        ting me, only MAKES ME BITTER.")
	setTextString('LyricArriba',"      sis")
elseif curStep == 1253 then
	setTextString('LyricAbajo',"Resis        me, only MAKES ME BITTER.")
	setTextString('LyricArriba',"          ting")
elseif curStep == 1258 then
	setTextString('LyricAbajo',"Resisting         only MAKES ME BITTER.")
	setTextString('LyricArriba',"                  me,")
elseif curStep == 1263 then
	setTextString('LyricAbajo',"Resisting me,           MAKES ME BITTER.")
	setTextString('LyricArriba',"                         only")
elseif curStep == 1267 then
	setTextString('LyricAbajo',"Resisting me, only                ME BITTER.")
	setTextString('LyricArriba',"                                MAKES")
elseif curStep == 1271 then
	setTextString('LyricAbajo',"Resisting me, only MAKES        BITTER.")
	setTextString('LyricArriba',"                                              ME")
elseif curStep == 1275 then
	setTextString('LyricAbajo',"Resisting me, only MAKES ME")
	setTextString('LyricArriba',"                                                     BITTER.")
elseif curStep == 1286 then
	setTextString('LyricAbajo','')
	setTextString('LyricArriba','')
  end
  end
setProperty('LyricArriba.x', getProperty('LyricAbajo.x'))
end--Al fin se acabó la torturaaaaaa xd (Nickobelit)

function onGameOver()
setProperty('LyricAbajo.visible', false)
setProperty('LyricArriba.visible', false)
end