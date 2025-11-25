#!/bin/bash

echo "============================Installing Tools For Scanaimar13=========================="
echo " "
echo "Install ..."
echo
apt-get install nikto
echo
apt-get install nmap
echo
apt-get install dirb
echo
apt install whois
echo
apt install xsser
echo
apt install dnsmap
echo
apt install davtest
echo
apt-get install dnswalk
echo
apt-get install gobuster
echo
apt-get install wapiti
echo
apt-get install whatweb
echo
apt install wafw00f
echo
apt install fierce
echo
apt install -y feroxbuster
echo
pip install badsecrets
echo
badsecrets eyJhbGciOiJIUzI1NiJ9.eyJJc3N1ZXIiOiJJc3N1ZXIiLCJVc2VybmFtZSI6IkJhZFNlY3JldHMiLCJleHAiOjE1OTMxMzM0ODMsImlhdCI6MTQ2NjkwMzA4M30.ovqRikAo_0kKJ0GVrAwQlezymxrLGjcEiW_s3UJMMCo
echo
pip install a2sv
echo
pip install arjun
echo
pip install uro
echo
pip install photon
echo
##Install adfind
echo
echo -e "\nINSTALLING \e[31m[adfind]\e[0m"
sudo git clone https://github.com/sahakkhotsanyan/adfind.git
cd adfind*
go build cmd/adfind/adfind.go -o adfind
echo -e "\nINSTALLING adfind \e[32mFINISH\e[0m"

##Install lulzbuster
echo -e "\nINSTALLING \e[31m[lulzbuster]\e[0m"
sudo apt install libcurl4 libcurl4-openssl-dev
git clone https://github.com/noptrix/lulzbuster
cd lulzbuster
make lulzbuster
sudo make install
echo -e "\nINSTALLING lulzbuster \e[32mFINISH\e[0m"

##Installing halberd
echo -e "\nINSTALLING \e[31m[halberd]\e[0m"
git clone https://github.com/jmbr/halberd.git
cd halberd
sudo python setup.py install --break-system-packages
cd ..
echo -e "\nINSTALLING halberd \e[32mFINISH\e[0m"

##Install Sitadel
echo -e "\nINSTALLING \e[31m[Sitadel]\e[0m"
git clone https://github.com/shenril/Sitadel.git
cd Sitadel
pip install .
echo -e "\nINSTALLING Sitadel \e[32mFINISH\e[0m"

##Install wascan
echo -e "\nINSTALLING \e[31m[wascan]\e[0m"
git clone https://github.com/m4ll0k/WAScan.git wascan
cd wascan 
pip install -r requirements.txt
echo -e "\nINSTALLING wascan \e[32mFINISH\e[0m"

##Install WebXploiter
echo -e "\nINSTALLING \e[31m[WebXploiter]\e[0m"
git clone https://github.com/a0xnirudh/WebXploiter.git
cd WebXploiter
cd install 
python install.py
echo -e "\nINSTALLING WebXploiter \e[32mFINISH\e[0m"

##Install XSStrike
echo -e "\nINSTALLING \e[31m[XSStrike]\e[0m"
git clone https://github.com/s0md3v/XSStrike
cd XSStrike
pip install -r requirements.txt --break-system-packages
echo -e "\nINSTALLING XSStrike\e[32mFINISH\e[0m"

##Install gowitness
echo -e "\nINSTALLING \e[31m[gowitness]\e[0m"
go install github.com/sensepost/gowitness@latest
echo -e "\nINSTALLING gowitness\e[32mFINISH\e[0m"

##Install lbd
echo -e "\nINSTALLING \e[31m[lbd]\e[0m"
git clone https://github.com/D3vil0p3r/lbd.git
echo -e "\nINSTALLING lbd\e[32mFINISH\e[0m"

##Install golismero
echo -e "\nINSTALLING \e[31m[golismero]\e[0m" 
bash
apt-get install python2.7 python2.7-dev python-pip python-docutils git perl nmap sslscan
cd /opt
git clone https://github.com/golismero/golismero.git
cd golismero
pip install -r requirements.txt
pip install -r requirements_unix.txt
ln -s ${PWD}/golismero.py /usr/bin/golismero
echo -e "\nINSTALLING golismero\e[32mFINISH\e[0m"

##Install CMSmap
echo -e "\nINSTALLING \e[31m[CMSmap]\e[0m" 
git clone https://github.com/Dionach/CMSmap
cd CMSmap
sudo python3 setup.py install
echo -e "\nINSTALLING CMSmap\e[32mFINISH\e[0m"

##Install Sn1per
echo -e "\nINSTALLING \e[31m[Sn1per]\e[0m" 
git clone https://github.com/1N3/Sn1per
cd Sn1per
bash install.sh
echo -e "\nINSTALLING Sn1per\e[32mFINISH\e[0m"

##Install BaRMIe
echo -e "\nINSTALLING \e[31m[BaRMIe]\e[0m" 
https://github.com/NickstaDB/BaRMIe/releases/download/v1.01/BaRMIe_v1.01.jar
echo -e "\nINSTALLING BaRMIe\e[32mFINISH\e[0m"

##Install vulscan
echo -e "\nINSTALLING \e[31m[vulscan]\e[0m" 
ln -s `pwd`/scipag_vulscan /usr/share/nmap/scripts/vulscan
echo -e "\nINSTALLING vulscan\e[32mFINISH\e[0m"

##Install katana
echo -e "\nINSTALLING \e[31m[katana]\e[0m" 
CGO_ENABLED=1 go install github.com/projectdiscovery/katana/cmd/katana@latest
echo -e "\nINSTALLING katana\e[32mFINISH\e[0m"

##Install anew
echo -e "\nINSTALLING \e[31m[anew]\e[0m" 
go install -v github.com/tomnomnom/anew@latest
echo -e "\nINSTALLING anew\e[32mFINISH\e[0m"

sudo  cp '/scripts/CVE-2022-22965.nse' '/scripts/CVE-2022-39952.nse' '/scripts/cve-2022-40684.nse' '/scripts/cve-2021-41773.nse' '/scripts/CVE-2023-6553.nse' '/scripts/cve-2019-19781.nse' '/scripts/CVE-2023-20198.nse' '/scripts/CVE-2023-27350.nse' '/scripts/CVE-2023-36845.nse' '/scripts/CVE-2024-3400.nse' '/scripts/htpasswd.nse' '/scripts/traversal.nse' '/scripts/phpadmin.nse' '/scripts/f5.nse' '/scripts/citrix.nse'   '/usr/share/nmap/scripts'

echo "=============================Done Installing Tools================================="
