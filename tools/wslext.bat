::Open Port ssh wsl externe
@echo on

wsl -- sed -i -e 's/\r$//' ipinfo.bash
wsl -- ./ipinfo.bash > wslx.temp
set /p Ip=<wslx.temp


netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=22 connectaddress=%Ip% connectport=22
