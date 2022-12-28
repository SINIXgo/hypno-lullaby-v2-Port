local Cripto
function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Duet' then
			--setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Duet' then
		if noteData == 0 then
			triggerEvent('Play Animation','singLEFT' ,'gf')
		end
		if noteData == 1 then
			triggerEvent('Play Animation','singDOWN' ,'gf')
		end
		if noteData == 2 then
			triggerEvent('Play Animation','singUP', 'gf')
		end
		if noteData == 3 then
			triggerEvent('Play Animation','singRIGHT' ,'gf')
		end
	end
end