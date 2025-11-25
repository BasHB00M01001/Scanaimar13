#!/bin/bash

echo "============================Installing Tools For Scanaimar13=========================="
echo " "
echo "Install ..."
echo
pacman -S barmie sn1per cmsmap whois wapiti nikto uniscan golismero davtest xsser dirb dnswalk dnsmap fierce theharvester wafw00f lbd feroxbuster fhttp gowitness xsstrike webxploiter wascan sitadel photon magescan lulzbuster a2sv arjun adfind halberd badsecrets whatweb taipan nuclei 
echo
pip install uro
echo
pip install photon
echo

##Install vulscan
echo -e "\nINSTALLING \e[31m[vulscan]\e[0m" 
git clone https://github.com/scipag/vulscan scipag_vulscan 
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
