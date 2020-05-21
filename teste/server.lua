local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
teste = {} -- cria array de funções
Tunnel.bindInterface("teste",teste) -- envia as informações pro client .lua


