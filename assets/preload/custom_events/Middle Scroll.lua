-- Midle scroll event bcs this is used a lot
function onEvent(name, value1, value2, value3)
	if name == 'Middle Scroll' then
		middleScroll(value1, tonumber(value2), tonumber(value2), value3)
	end
end

function middleScroll(middle, timeBF, timeOpponent, ease)
	if not middlescroll then
		-- Middle
		if middle == 'true' or middle == 'True' then
			noteTweenX('Note_Tween_0', 0, defaultOpponentStrumX0 - (322 * 2), timeOpponent, ease)
			noteTweenX('Note_Tween_1', 1, defaultOpponentStrumX1 - (322 * 2), timeOpponent, ease)
			noteTweenX('Note_Tween_2', 2, defaultOpponentStrumX2 - (322 * 2), timeOpponent, ease)
			noteTweenX('Note_Tween_3', 3, defaultOpponentStrumX3 - (322 * 2), timeOpponent, ease)

			noteTweenX('Note_Tween_4', 4, defaultPlayerStrumX0 - 322, timeBF, ease)
			noteTweenX('Note_Tween_5', 5, defaultPlayerStrumX1 - 322, timeBF, ease)
			noteTweenX('Note_Tween_6', 6, defaultPlayerStrumX2 - 322, timeBF, ease)
			noteTweenX('Note_Tween_7', 7, defaultPlayerStrumX3 - 322, timeBF, ease)

			-- Rotate
			for i = 0,3 do
				noteTweenAngle('Note_Spin_In_'..i, i, 360 * 2, timeOpponent, ease)
			end
			for i = 4,7 do
				noteTweenAngle('Note_Spin_In_'..i, i, 360 * -2, timeBF, ease)
			end
		end

		if middle == 'false' or middle == 'False' then
			noteTweenX('Note_Tween_0', 0, defaultOpponentStrumX0, timeOpponent, ease)
			noteTweenX('Note_Tween_1', 1, defaultOpponentStrumX1, timeOpponent, ease)
			noteTweenX('Note_Tween_2', 2, defaultOpponentStrumX2, timeOpponent, ease)
			noteTweenX('Note_Tween_3', 3, defaultOpponentStrumX3, timeOpponent, ease)

			noteTweenX('Note_Tween_4', 4, defaultPlayerStrumX0, timeBF, ease)
			noteTweenX('Note_Tween_5', 5, defaultPlayerStrumX1, timeBF, ease)
			noteTweenX('Note_Tween_6', 6, defaultPlayerStrumX2, timeBF, ease)
			noteTweenX('Note_Tween_7', 7, defaultPlayerStrumX3, timeBF, ease)

			-- Rotate
			for i = 0,3 do
				noteTweenAngle('Note_Spin_Out_'..i, i, 360 * -1, timeOpponent, ease)
			end
			for i = 4,7 do
				noteTweenAngle('Note_Spin_Out_'..i, i, 360 * 1, timeBF, ease)
			end
		end
	else
		if middle == 'true' or middle == 'True' then
			noteTweenX('Note_Tween_0', 0, defaultOpponentStrumX0 - (322 * 1), timeOpponent, ease)
			noteTweenX('Note_Tween_1', 1, defaultOpponentStrumX1 - (322 * 1), timeOpponent, ease)
			noteTweenX('Note_Tween_2', 2, defaultOpponentStrumX2 + (322 * 1), timeOpponent, ease)
			noteTweenX('Note_Tween_3', 3, defaultOpponentStrumX3 + (322 * 1), timeOpponent, ease)
		else
			noteTweenX('Note_Tween_0', 0, defaultOpponentStrumX0 + (322 * 1), timeOpponent, ease)
			noteTweenX('Note_Tween_1', 1, defaultOpponentStrumX1 + (322 * 1), timeOpponent, ease)
			noteTweenX('Note_Tween_2', 2, defaultOpponentStrumX2 - (322 * 1), timeOpponent, ease)
			noteTweenX('Note_Tween_3', 3, defaultOpponentStrumX3 - (322 * 1), timeOpponent, ease)
		end

		-- Rotate
		for i = 0,1 do
			noteTweenAngle('Note_Spin_'..i, i, 360 * -2, timeOpponent, ease)
		end
		for i = 2,3 do
			noteTweenAngle('Note_Spin_'..i, i, 360 * 2, timeOpponent, ease)
		end
	end
end