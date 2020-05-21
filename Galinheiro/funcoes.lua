
--PARA CRIAR UM TEXTO 3D NA TELA FLUTUANTE EM ALGUMA POSIÇÃO
DrawText3D = function(x, y, z, text)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local px, py, pz = table.unpack(GetGameplayCamCoords())
	local scale = 0.45
	if onScreen then
		SetTextScale(scale, scale)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255, 255, 255, 215)
		SetTextOutline(1)
		SetTextEntry("STRING")
		SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x, _y)
		local factor = (string.len(text)) / 370
		DrawRect(_x, _y + 0.0150, 0.030 + factor, 0.030, 66, 66, 66, 150)
	end
end

-- NOTIFICAÇÃO PADRÃO DO GTA V
function notificacao(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

--DESENHA TEXTO EM ALGUM LUGAR NA TELA 
function drawTxt(text, font, x, y, scale, r, g, b, a)
	SetTextFont(font)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x, y)
end

-- VERIFICA SE O PLAYER ESTA PROXIMO DE ALGUMA COISA - PASSE AS COORDENADAS , e o Distancia o valor minimo de distancia
function proximo(x,y,z,distancia)
	local player = GetPlayerPed()
	local playerCoords = GetEntityCoords(player, 0)

	local distance =
		GetDistanceBetweenCoords(x,y,z, playerCoords["x"], playerCoords["y"], playerCoords["z"], true)
	if (distance <= distancia) then
		return true
	end
end

