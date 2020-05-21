Tunnel = module("vrp", "lib/Tunnel") -- para comunicação entre o client e server
Proxy = module("vrp", "lib/Proxy") -- necessario para comunicação entre os arquivos client e server
Tunnel.bindInterface("teste", teste) -- aqui é criado a comunicação entre os dois arquivos
Proxy.addInterface("teste", teste) -- aqui você cria a proxy para que o server leia funções do client
vRP = Proxy.getInterface("vRP") -- é utilizado para funções do framework VRP
galinheiro = Tunnel.getInterface("teste") -- para realizar chamada de funções que estão no server.lua


Citizen.CreateThread(
    function()
        while true do
        --TUDO AQUI RODA O TEMPO TODO 
        Citizen.Wait(1)

        end
    end
)
