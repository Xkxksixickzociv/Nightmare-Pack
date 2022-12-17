function onEvent(name, value1, value2, value3)
	if name == 'Show Only Strums' then
		bool = true
		if value1 == 'True' or value1 == 'true' then
			bool = false
		end

		setProperty('healthBar.visible', bool)
		setProperty('healthBarBG.visible', bool)
		setProperty('scoreTxt.visible', bool)
		setProperty('timeTxt.visible', bool)
		setProperty('timeBar.visible', bool)
		setProperty('timeBarBG.visible', bool)
		setProperty('iconP1.visible', bool)

		if not animIcons then
			setProperty('iconP2.visible', bool)
		end
	end	
end