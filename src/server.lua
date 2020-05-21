local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
nome = {} -- cria array de funções
Tunnel.bindInterface("nome",nome) -- envia as informações pro client .lua


