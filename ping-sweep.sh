#simple bash script writen by Andrei Abd | CoderX
#for more information
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
$1
if [ $1 = "--help" ]
then
clear
echo " "
echo " █▀▀ █▀█ █▀▄ █▀▀ █▀█ ▀▄▀"
echo " █▄▄ █▄█ █▄▀ ██▄ █▀▄ █░█"
echo " "
echo "[*] Introduction:"
echo "Ping Sweep Tool, Simple bash script writen by Andrei Abd | CoderX"
echo "this tool can give you information about all devices that contact"
echo "to any local network useing ping standart tool"
echo " "
echo "[*] Usage:"
echo "Ping sweep useing standart local ip adress - 192.168.1.1, also you"
echo "can edit this ip by comment standart orderd of course after uncomment"
echo "new line that can simply write sepacial IP Adress you want to do a test"
echo "for it, hope you finde what you need !!!"
echo " "
echo "[*] Contact:"
echo "for more information can mail by adress : usr.g0a1@gmail.com"
echo " "
exit
fi
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#!/bin/sh
clear
echo " "
echo " █▀▀█ ░▀░ █▀▀▄ █▀▀▀ 　 █▀▀ █░░░█ █▀▀ █▀▀ █▀▀█ "
echo " █░░█ ▀█▀ █░░█ █░▀█ 　 ▀▀█ █▄█▄█ █▀▀ █▀▀ █░░█ "
echo " █▀▀▀ ▀▀▀ ▀░░▀ ▀▀▀▀ 　 ▀▀▀ ░▀░▀░ ▀▀▀ ▀▀▀ █▀▀▀ "
echo " "
sleep 1
echo "[?] for more information run script with '--help'"
echo "[?] to exit please use 'Ctl+z'"
read -p "[?] Getway IP Adress - ex (192.168.1.1): " getway
read -p "[?] How many ports you want to ping ? - ex (255): " ports
read -p "[?] Do you want to run scan - press enter to Contineu ??? "
echo " "
echo "[!] Detect Defult getway IP Adress ....."
echo "[+] Running Defult Scan on ($getway/$ports):"
echo " "
sleep 1
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#defult scanning useing while statement ....
i=0
while [ $i -le $ports ]
do
i=`expr $i + 1`
ping 192.168.1.$i
done | grep "bytes of data"
echo "[!] Scan Finesh"
#defult scanning useing for statement ....
#for i in `seq 1 255`; do ping 192.168.1.$i; done;
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#manual user edit, dont forgat to comnment defult orders !!!
#for i in `seq 1 255`; do ping XXX.XXX.XXX.$i; done | grep "bytes of data"
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
