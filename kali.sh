#!/bin/sh
# Free XRDP KaliLinux |
rm -rf ngrok ngrok.zip ng.sh xrdp-kali.sh x.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngr0k > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
echo "===================================="
echo "Install XRDP Kali Linux"
echo "===================================="
docker pull danielguerra/ubuntu-xrdp:kali
clear
echo "===================================="
echo "Start XRDP Kali Linux"
echo "
██╗░░██╗░█████╗░██╗░░░░░██╗
██║░██╔╝██╔══██╗██║░░░░░██║
█████═╝░███████║██║░░░░░██║
██╔═██╗░██╔══██║██║░░░░░██║
██║░╚██╗██║░░██║███████╗██║
╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝╚═╝"
echo "===================================="
echo "===================================="
echo "Username : hoangdev"
echo "Password : vpsfree123"
echo "XRDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "IP:" && curl --silent --show-error ipconfig.io
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Wait to finish bot and next open RDC to connect"
echo "Wait..."
echo "===================================="
echo "===================================="
docker run --rm --hostname aank --shm-size 1g -p 3388:3389 danielguerra/ubuntu-xrdp:kali > /dev/null 2>&1
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b

██╗░░██╗░█████╗░░█████╗░███╗░░██╗░██████╗░░░░░░░██████╗░██████╗░██████╗░
██║░░██║██╔══██╗██╔══██╗████╗░██║██╔════╝░░░░░░░██╔══██╗██╔══██╗██╔══██╗
███████║██║░░██║███████║██╔██╗██║██║░░██╗░█████╗██████╔╝██║░░██║██████╔╝
██╔══██║██║░░██║██╔══██║██║╚████║██║░░╚██╗╚════╝██╔══██╗██║░░██║██╔═══╝░
██║░░██║╚█████╔╝██║░░██║██║░╚███║╚██████╔╝░░░░░░██║░░██║██████╔╝██║░░░░░
╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚══╝░╚═════╝░░░░░░░╚═╝░░╚═╝╚═════╝░╚═╝░░░░░
    $r  Hoang Ank is ME © 2022 $c https://zalo.me/g/qveqns906
          
$endc$enda""";
