-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Blackout' then
		cameraFlash('camGame', value1, value2, true)
                cameraFlash('camHud', value1, value2, true)
	end
end