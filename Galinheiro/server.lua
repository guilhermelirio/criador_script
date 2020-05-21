local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
Galinheiro = {} -- cria array de funções
Tunnel.bindInterface("Galinheiro",Galinheiro) -- envia as informações pro client .lua


