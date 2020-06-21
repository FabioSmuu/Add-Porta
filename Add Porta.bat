@echo off
color f1
title Add Portas
cls
set /p nome=Nome da Porta: 
cls
echo.Nome da Porta: %nome%
set /p port=Porta: 
cls
echo.Nome da Porta: %nome%
echo.Porta: %port%
echo.
set /p ok=Pressione Enter caso queira adicionar em seu firewall a porta %port% de nome %nome%.
cls
echo.Adicionando Porta %port%,"%nome%" UDP de Entrada...
netsh advfirewall firewall add rule name="%nome%" dir=in action=allow protocol=UDP localport=%port%
cls
echo.Adicionando Porta %port%,"%nome%" UDP de Entrada...
echo.Adicionando Porta %port%,"%nome%" UDP de Saida...
netsh advfirewall firewall add rule name="%nome%" dir=out action=allow protocol=UDP localport=%port%
cls
echo.Adicionando Porta %port%,"%nome%" UDP de Entrada...
echo.Adicionando Porta %port%,"%nome%" UDP de Saida...
echo.Adicionando Porta %port%,"%nome%" TCP de Entrada...
netsh advfirewall firewall add rule name="%nome%" dir=in action=allow protocol=TCP localport=%port%
cls
echo.Adicionando Porta %port%,"%nome%" UDP de Entrada...
echo.Adicionando Porta %port%,"%nome%" UDP de Saida...
echo.Adicionando Porta %port%,"%nome%" TCP de Entrada...
echo.Adicionando Porta %port%,"%nome%" TCP de Saida...
netsh advfirewall firewall add rule name="%nome%" dir=out action=allow protocol=TCP localport=%port%
cls
echo.Porta %port% e Nome "%nome%" TCP/UDP de Entrada e Saida Adicionada.
exit
