local texto1 = 10.660
local texto2 = 20.430
local texto3 = 10.430


RegisterNetEvent('maxipolidispo:NoPermisos')
AddEventHandler('maxipolidispo:NoPermisos', function()
    ShowInfo(nopermisos)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if peacetimeActive then
            DrawText2(texto1, texto2, 1.0,1.0,0.45, drawTimeText, 255, 255, 255, 255)
            DrawText2(texto1, texto3, 1.0,1.0,0.45, "~w~👮‍♂️ P.F.A: " .. cambiarcolor .. "~r~NO DISPONIBLE ~w~", 255, 255, 255, 255)
        elseif not peacetimeActive then
            if peacetime then
                DrawText2(texto1, texto2, 1.0,1.0,0.45, drawTimeText, 255, 255, 255, 255)
                DrawText2(texto1, texto3, 1.0,1.0,0.45, "~w~👮‍♂️ P.F.A: " .. cambiarcolor .. "~g~DISPONIBLE ~w~"  , 255, 255, 255, 255)
            end
        end
	end
end)

function DrawText2(x,y ,width,height,scale, text, r,g,b,a)
    if posicion == 1 or posicion == 4 then
        SetTextCentre(true)
    end
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
   EndTextCommandDisplayText(alado, altura)
end

function ShowInfo(text)
	BeginTextCommandThefeedPost("STRING")
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandThefeedPostTicker(true, false)
end

--------------------------------------------------------
--------------------------------------------------------
--                                                    --
--         Disponibilidad De P.F.A FlexLife           --
--            Developed By: Maxi#6000                 --
--         Esta Prohibida la venta de este script     --
--             Exclusivo Para FlexLife                --
--                                                    --
--------------------------------------------------------
--------------------------------------------------------