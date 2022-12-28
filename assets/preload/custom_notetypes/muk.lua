function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'muk' then
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
		end
	end
end