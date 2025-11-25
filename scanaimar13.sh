#!/bin/bash

Negro='\033[0;30m'
Rojo='\033[0;31m'
Verde='\033[0;32m'
Amarillo='\033[0;33m'
Blanco='\033[0;37m'
Purpura='\033[0;35m'
Cyan='\033[0;36m'
Azul='\033[0;34m'
Normal='\033[0m'

cat << "INFO"

                     iiii                                                                  
                    i::::i                                                                
                     iiii                                                                 
                                                                                         
   aaaaaaaaaaaaa   iiiiiii    mmmmmmm    mmmmmmm     aaaaaaaaaaaaa   rrrrr   rrrrrrrrr     
   a::::::::::::a  i:::::i  mm:::::::m  m:::::::mm   a::::::::::::a  r::::rrr:::::::::r     
   aaaaaaaaa:::::a  i::::i m::::::::::mm::::::::::m  aaaaaaaaa:::::a r:::::::::::::::::r    
            a::::a  i::::i m::::::::::::::::::::::m           a::::a rr::::::rrrrr::::::r   
     aaaaaaa:::::a  i::::i m:::::mmm::::::mmm:::::m    aaaaaaa:::::a  r:::::r     r:::::r   
   aa::::::::::::a  i::::i m::::m   m::::m   m::::m  aa::::::::::::a  r:::::r     rrrrrrr   
  a::::aaaa::::::a  i::::i m::::m   m::::m   m::::m a::::aaaa::::::a  r:::::r               
 a::::a    a:::::a  i::::i m::::m   m::::m   m::::ma::::a    a:::::a  r:::::r               
 a::::a    a:::::a i::::::im::::m   m::::m   m::::ma::::a    a:::::a  r:::::r               
 a:::::aaaa::::::a i::::::im::::m   m::::m   m::::ma:::::aaaa::::::a  r:::::r               
 a::::::::::aa:::ai::::::im::::m   m::::m   m::::m a::::::::::aa:::a r:::::r               
  aaaaaaaaaa  aaaaiiiiiiiimmmmmm   mmmmmm   mmmmmm  aaaaaaaaaa  aaaa rrrrrrr              
ᴡ3 Ⓐʀ3 Ⓐɴ0ɴʏᴍ0ᴜS ᴡ3 Ⓐʀ3 ʟ3ɢ10ɴ, ᴡ3 ᴅ0ɴ’ᴛ ꜰ06ʀɢ1ᴠ3 ᴡ3 ᴅ0ɴ’ᴛ ꜰ0ʀɢ3ᴛ ,3xp3cᴛ uS

INFO


if [ -z "$1" ]; then
        printf "${Amarillo}" ; echo
        echo "ScanAimar13 is a vulnerability scan "
        echo "Use:sudo bash $0 ᴅoᴍaiɴ"; printf "${Cyan}\36n"
        exit 0
fi

output_dir="output"
mkdir -p "$output_dir"


echo
echo "*********************"
echo "test on the URL.: $1"
echo "*********************"
echo
echo -e "\e[00;35m# CURL HACK #\e[00m" 
echo
curl -vvv -s -k -X 'GET' -H "Host: 127.0.0.1" -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0" -H "Accept: text/html, applicattion/xhtml+xml, application/xml;q=0.9,*/*;q=0.8"  -H "Accept-Language: es-ES,es;q=0.8,en-US;q=0.5,en;q=0.3" http://$1
echo
echo "PUT";  
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X PUT  -H 'X-Method-Override: PUT' -H "X-HTTP-Method: PUT" -H "X-Method-Override: PUT" | cat > "$output_dir/curlg.txt"
echo
echo "TRACE";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X TRACE  -H 'X-Method-Override: TRACE' -H "X-HTTP-Method: TRACE" -H "X-Method-Override: TRACE" | cat > "$output_dir/curlg1.txt"
echo
echo "GET";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X GET -H 'X-Method-Override: GET' -H "X-HTTP-Method: GET" -H "X-Method-Override: GET" | cat > "$output_dir/curlg2.txt"
echo
echo "POST";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X POST -H 'X-Method-Override: POST' -H "X-HTTP-Method: POST" -H "X-Method-Override: POST" | cat > "$output_dir/curlg3.txt"
echo
echo "HEAD";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X HEAD -H 'X-Method-Override: HEAD' -H "X-HTTP-Method: HEAD" -H "X-Method-Override: HEAD" | cat > "$output_dir/curlg4.txt"
echo
echo "OPTIONS";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X OPTIONS -H 'X-Method-Override: OPTIONS' -H "X-HTTP-Method: OPTIONS" -H "X-Method-Override: OPTIONS" | cat > "$output_dir/curlg5.txt"
echo
echo "PATCH";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X PATCH -H 'X-Method-Override: PATCH' -H "X-HTTP-Method: PATCH" -H "X-Method-Override: PATCH" | cat > "$output_dir/curlg6.txt"
echo
echo "ACL";  
echo
curl -ks https://$1 -L -H 'accept: json' -H 'User-Agent: Mozilla/5.0' -I  -X ACL -H 'X-Method-Override: ACL' -H "X-HTTP-Method: ACL" -H "X-Method-Override: ACL" | cat > "$output_dir/curlg7.txt"
echo
echo "ARBITRARY";  
echo
curl -ks https://$1 -L -H 'accept: json' -H 'User-Agent: Mozilla/5.0' -I  -X ARBITRARY | uro > "$output_dir/curlg8.txt"
echo
echo "BASELINE-CONTROL";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X BASELINE-CONTROL -H 'X-Method-Override: BASELINE-CONTROL' -H "X-HTTP-Method: BASELINE-CONTROL" -H "X-Method-Override: BASELINE-CONTROL" | cat > "$output_dir/curlg9.txt"
echo
echo "BIND";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X BIND  -H 'X-Method-Override: BIND' -H "X-HTTP-Method: BIND" -H "X-Method-Override: BIND"
echo
echo "CHECKIN";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X CHECKIN -H 'X-Method-Override: CHECKIN' -H "X-HTTP-Method: CHECKIN" -H "X-Method-Override: CHECKIN"
echo
echo "CHECKOUT";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X CHECKOUT -H 'X-Method-Override: CHECKOUT' -H "X-HTTP-Method: CHECKOUT" -H "X-Method-Override: CHECKOUT"
echo
echo "CONNECT";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X CONNECT -H 'X-Method-Override: CONNECT' -H "X-HTTP-Method: CONNECT" -H "X-Method-Override: CONNECT"
echo
echo "COPY";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X COPY -H 'X-Method-Override: COPY' -H "X-HTTP-Method: COPY" -H "X-Method-Override: COPY"
echo
echo "INDEX";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X INDEX -H 'X-Method-Override: INDEX' -H "X-HTTP-Method: INDEX" -H "X-Method-Override: INDEX"
echo
echo "LABEL";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X LABEL -H 'X-Method-Override: LABEL' -H "X-HTTP-Method: LABEL" -H "X-Method-Override: LABEL"
echo
echo "LINK";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X LINK -H 'X-Method-Override: LINK' -H "X-HTTP-Method: LINK" -H "X-Method-Override: LINK"
echo
echo "LOCK";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X LOCK -H 'X-Method-Override: LOCK' -H "X-HTTP-Method: LOCK" -H "X-Method-Override: LOCK"
echo
echo "MERGE";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X MERGE -H 'X-Method-Override: MERGE' -H "X-HTTP-Method: MERGE" -H "X-Method-Override: MERGE"
echo
echo "MKACTIVITY";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X MKACTIVITY -H 'X-Method-Override: MKACTIVITY' -H "X-HTTP-Method: MKACTIVITY" -H "X-Method-Override: MKACTIVITY"
echo
echo "MKCALENDAR";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X MKCALENDAR -H 'X-Method-Override: MKCALENDAR' -H "X-HTTP-Method: MKCALENDAR" -H "X-Method-Override: MKCALENDAR"
echo
echo "MKCOL";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X MKCOL -H 'X-Method-Override: MKCOL' -H "X-HTTP-Method: MKCOL" -H "X-Method-Override: MKCOL"
echo
echo "MKREDIRECTREF";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X MKREDIRECTREF -H 'X-Method-Override: MKREDIRECTREF' -H "X-HTTP-Method: MKREDIRECTREF" -H "X-Method-Override: MKREDIRECTREF"
echo
echo "MKWORKSPACE";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X MKWORKSPACE -H 'X-Method-Override: MKWORKSPACE' -H "X-HTTP-Method: MKWORKSPACE" -H "X-Method-Override: MKWORKSPACE"
echo
echo "MOVE";  
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X MOVE -H 'X-Method-Override: MOVE' -H "X-HTTP-Method: MOVE" -H "X-Method-Override: MOVE"
echo
echo "ORDERPATCH";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X ORDERPATCH  -H 'X-Method-Override: ORDERPATCH' -H "X-HTTP-Method: ORDERPATCH" -H "X-Method-Override: ORDERPATCH"
echo
echo "PRI";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X PRI  -H 'X-Method-Override: PRI' -H "X-HTTP-Method: PRI" -H "X-Method-Override: PRI"
echo
echo "PROPFIND";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X PROPFIND  -H 'X-Method-Override: PROPFIND' -H "X-HTTP-Method: PROPFIND" -H "X-Method-Override: PROPFIND"
echo
echo "PROPPATCH";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X PROPPATCH  -H 'X-Method-Override: PROPPATCH' -H "X-HTTP-Method: PROPPATCH" -H "X-Method-Override: PROPPATCH"
echo
echo "REBIND";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X REBIND  -H 'X-Method-Override: REBIND' -H "X-HTTP-Method: REBIND" -H "X-Method-Override: REBIND"
echo
echo "REPORT";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X REPORT  -H 'X-Method-Override: REPORT' -H "X-HTTP-Method: REPORT" -H "X-Method-Override: REPORT" | cat > "$output_dir/curlhu.txt"
echo
echo "SEARCH";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X SEARCH  -H 'X-Method-Override: SEARCH' -H "X-HTTP-Method: SEARCH" -H "X-Method-Override: SEARCH" | cat > "$output_dir/curlhi.txt"
echo
echo "SHOWMETHOD";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X SHOWMETHOD  -H 'X-Method-Override: SHOWMETHOD' -H "X-HTTP-Method: SHOWMETHOD" -H "X-Method-Override: SHOWMETHOD" | cat > "$output_dir/curlho.txt"
echo
echo "SPACEJUMP";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X SPACEJUMP  -H 'X-Method-Override: SPACEJUMP' -H "X-HTTP-Method: SPACEJUMP" -H "X-Method-Override: SPACEJUMP" | cat > "$output_dir/curl0.txt"
echo
echo "TEXTSEARCH";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X TEXTSEARCH  -H 'X-Method-Override: TEXTSEARCH' -H "X-HTTP-Method: TEXTSEARCH" -H "X-Method-Override: TEXTSEARCH" | cat > "$output_dir/curl1.txt"
echo
echo "TRACK";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X TRACK  -H 'X-Method-Override: TRACK' -H "X-HTTP-Method: TRACK" -H "X-Method-Override: TRACK" | cat > "$output_dir/curl2.txt"
echo
echo "UNBIND";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X UNBIND  -H 'X-Method-Override: UNBIND' -H "X-HTTP-Method: UNBIND" -H "X-Method-Override: UNBIND" | cat > "$output_dir/curl3.txt"
echo
echo "UNCHECKOUT";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X UNCHECKOUT  -H 'X-Method-Override: UNCHECKOUT' -H "X-HTTP-Method: UNCHECKOUT" -H "X-Method-Override: UNCHECKOUT" | cat > "$output_dir/curl4.txt"
echo
echo "UNLINK"; 
echo 
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X UNLINK  -H 'X-Method-Override: UNLINK' -H "X-HTTP-Method: UNLINK" -H "X-Method-Override: UNLINK" | cat > "$output_dir/curl5.txt"
echo
echo "UNLOCK";  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X UNLOCK  -H 'X-Method-Override: UNLOCK' -H "X-HTTP-Method: UNLOCK" -H "X-Method-Override: UNLOCK" | cat > "$output_dir/curl6.txt"
echo
echo "UPDATE"  
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X UPDATE  -H 'X-Method-Override: UPDATE' -H "X-HTTP-Method: UPDATE" -H "X-Method-Override: UPDATE" | cat > "$output_dir/curl7.txt"
echo
echo -e "\e[00;35m# "UPDATEREDIRECTREF" #\e[00m 
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X UPDATEREDIRECTREF  -H 'X-Method-Override: UPDATEREDIRECTREF' -H "X-HTTP-Method: UPDATEREDIRECTREF" -H "X-Method-Override: UPDATEREDIRECTREF" | cat > "$output_dir/curl8.txt"
echo
echo -e "\e[00;35m# "VERSION-CONTROL" #\e[00m"
echo
curl -ks https://$1 -L -H 'User-Agent: Mozilla/5.0' -I  -X VERSION-CONTROL  -H 'X-Method-Override: VERSION-CONTROL' -H "X-HTTP-Method: VERSION-CONTROL" -H "X-Method-Override: VERSION-CONTROL" | cat > "$output_dir/curl8.txt"
echo
curl -Is --http2-prior-knowledge $1 | head -1 | uro > "$output_dir/curl9.txt"
echo
echo -e "\e[00;35m# Nmap scan of common web ports #\e[00m" 
echo
nmap  -sV -Pn -p80,81,443,4443,7443,8000,8080,8081,8443,8888 --script=http-enum --script=http-security-headers --script=http-methods $1 --open -sCV -O | cat > "$output_dir/nmap1.txt"
echo
echo -e "\e[00;35m# Nmap scan for other ports and vulnerabilities vulscan #\e[00m" 
echo
nmap -sV -Pn --script=vulscan/vulscan.nse  $1 | cat > "$output_dir/nmap-vuln.txt"
echo
echo -e "\e[00;35m# Web server information #\e[00m" 
echo
whatweb https://$1 | cat > "$output_dir/whatweb.txt"
HEAD $1
curl -I https://$1
echo
echo -e "\e[00;35m# Scan with BadSecrets to discover web secrets #\e[00m" 
echo
badsecrets -u https://$1 | cat > "$output_dir/badsecrets.txt"
echo
echo -e "\e[00;35m# Discover real servers #\e[00m" 
echo
halberd https://$1 | cat > "$output_dir/halberd.txt"
echo
echo -e "\e[00;35m# Scan with adfind to discover the admin panel #\e[00m" 
echo
adfind -u https://$1 | cat > "$output_dir/adfind.txt"
echo
echo -e "\e[00;35m# Search for SSL vulnerabilities with a2sv #\e[00m"
echo
a2sv -t $1 | cat > "$output_dir/a2sv.txt"
echo
echo -e "\e[00;35m# Scanning with Arjun discovers parameters #\e[00m" 
echo
arjun -u https://$1 | uro > "$output_dir/arjun.txt"
echo
echo -e "\e[00;35m# Scan with Lulzbuster #\e[00m" 
echo
cd lulzbuster
lulzbuster -s https://$1 -S | cat > "$output_dir/lulzbuster.txt"
echo
echo -e "\e[00;35m# Extract urls files keys emails with photon #\e[00m" 
echo
photon -u https://$1 --keys   -v | cat > "$output_dir/photon.txt"
echo
echo -e "\e[00;35m# Scan with Sitadel #\e[00m" 
echo
cd Sitadel
python sidatel.py https://$1 -r 2  | cat > "$output_dir/sitadel.txt"
echo
echo -e "\e[00;35m# Web scanning with Wascan #\e[00m" 
echo
cd wascan
python wascan.py --url https://$1 --scan 4 -v | cat > "$output_dir/wascan.txt"
echo
echo -e "\e[00;35m# Testing several attacks with webxploiter  #\e[00m" 
echo
cd webxploiter
python webxploiter.py -u  https://$1 -a | cat > "$output_dir/webxploiter.txt" 
echo
echo -e "\e[00;35m# Detect XSS vulnerabilities with xsstrike  #\e[00m" 
echo
cd xsstrike
python xsstrike.py -u  https://$1 --blind --crawl -l 3 | cat > "$output_dir/xsstrike.txt"
echo
echo -e "\e[00;35m# Screenshot with gowitness #\e[00m" 
echo
gowitness scan single -u https://$1 -q | cat > "$output_dir/gowitness.txt"
echo
echo -e "\e[00;35m# Fingerprint with fhttp  #\e[00m" 
echo
fhttp 0 https://$1 1 | cat > "$output_dir/fhttp.txt"
echo
echo -e "\e[00;35m# Detect with feroxbuster directory recursive #\e[00m" 
echo
feroxbuster --url https://$1 | cat > "$output_dir/feroxbuster.txt"
echo
echo -e "\e[00;35m# Detect firewall or balancer #\e[00m" 
echo
lbd https://$1 | cat > "$output_dir/lbd.txt"
echo
echo -e "\e[00;35m# Information on internet #\e[00m" 
echo
theharvester -l 50 -a -d https://$1 | cat > "$output_dir/theharvester.txt"
echo
echo -e "\e[00;35m# Search for vulnerable resources #\e[00m" 
echo
wget -O temp_aspnet_config_err --tries=1 https://$1/%7C~.aspx
wget -O temp_wp_check --tries=1 https://$1/wp-admin
wget -O temp_drp_check --tries=1 https://$1/user
wget -O temp_joom_check --tries=1 https://$1/administrator
wget -O temp_aspnet_elmah_axd --tries=1 https://$1/elmah.axd   | cat > "$output_dir/wget.txt"
echo
echo -e "\e[00;35m# Searching for subdomains of the domain #\e[00m" 
echo
fierce -wordlist sub.txt --domain $1
fierce --domain $1 | cat > "$output_dir/fierce.txt"
echo
dnsmap $1 | cat > "$output_dir/dnsmap.txt"
echo
echo -e "\e[00;35m# Search for vulnerable DNS #\e[00m" 
echo
dnswalk $1. | cat > "$output_dir/dnswalk.txt"
echo
echo -e "\e[00;35m#Search for vulnerable SSL #\e[00m" 
echo
nmap  --script ssl-heartbleed -Pn $1 | cat > "$output_dir/nmapCVh.txt"
nmap  --script ssl-poodle -Pn $1 | cat > "$output_dir/nmapCVp.txt"
nmap  --script ssl-ccs-injection -Pn $1 | cat > "$output_dir/nmapCVin.txt"
nmap  --script ssl-enum-ciphers -Pn $1 | cat > "$output_dir/nmapCVcip.txt"
nmap --script ssl-dh-params -Pn $1 | cat > "$output_dir/nmapCVpar.txt"
nmap --script=cve-2021-41773.nse $1 | cat > "$output_dir/nmapCV21.txt"
nmap  --script=phpadmin.nse $1 | cat > "$output_dir/nmapCVadm.txt"
nmap  --script=htpasswd.nse $1 | cat > "$output_dir/nmapCVpas.txt"
nmap  --script=traversal.nse $1 | cat > "$output_dir/nmapCVtras.txt"
nmap  -Pn  -sV --script=CVE-2024-3400.nse $1 | cat > "$output_dir/nmapCV24.txt"
nmap  -Pn -sV --script=CVE-2023-36845.nse $1 | cat > "$output_dir/nmapCV23.txt"
nmap  -Pn -sV --script=CVE-2023-27350.nse $1 | cat > "$output_dir/nmapCV23-27.txt"
nmap  -Pn -sV --script=CVE-2023-20198.nse $1 | cat > "$output_dir/nmapCV23-20.txt"
nmap  -Pn -sV --script=CVE-2023-6553.nse $1  | cat > "$output_dir/nmapCV23-63.txt"
nmap -Pn  -sV --script=cve-2022-40684.nse $1 | cat > "$output_dir/nmapCV22-40.txt"
nmap  -Pn  -sV --script=CVE-2022-39952.nse $1 | cat > "$output_dir/nmapCV22-39.txt"
nmap  -Pn  -sV --script=CVE-2022-22965.nse $1 | cat > "$output_dir/nmapCV22-22.txt"
nmap  -Pn  -sV --script=f5.nse $1 | cat > "$output_dir/nmapCVf5.txt"
nmap  -Pn -sV --script=CVE-2019-19781.nse $1 | cat > "$output_dir/nmapCV19.txt"
nmap  -Pn -sV --script=citrix.nse $1 | cat > "$output_dir/nmap.txt"
echo
echo -e "\e[00;35m#Search for vulnerable with Kit Golismero #\e[00m" 
echo
cd opt
cd golismero
python2 golismero.py -e dns_malware scan https://$1
python2 golismero.py -e heartbleed scan https://$1
python2 golismero.py -e brute_url_predictables scan https://$1
python2 golismero.py -e brute_directories scan https://$1
python2 golismero -e sslscan scan https://$1
python2 golismero -e zone_transfer scan https://$1
python2 golismero -e zone_transfer scan https://$1
python2 golismero -e brute_dns scan https://$1 | cat > "$output_dir/golismero.txt"
echo
echo -e "\e[00;35m# Discovery directories for Brute Force #\e[00m" 
echo
dirb http://$1 directory-list-1.0.txt -M 100,204,307,400,401,403,409,500,503 -f -w  -z 99 -a "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0" -H "Accept: text/html, applicattion/xhtml+xml, application/xml;q=0.9,*/*;q=0.8" | cat > "$output_dir/dirb.txt"
echo
echo -e "\e[00;35m# Vulnerable to XSS #\e[00m" 
echo
xsser -u https://$1 -c 100 --Cl | cat > "$output_dir/xsser-inject.txt"
xsser -u https://$1/login.php -p 'username=bob&password=XSS&captcha=X1S' | cat > "$output_dir/xsser.txt"
xsser -u https://$1/login.php -p 'username=admin&password=admin' --Xsa --Xsr --Coo | cat > "$output_dir/xsser.txt"
xsser -u https://$1/login.asp -p 'username=admin&password=XSS' --payload='}}%%&//<sc&ri/pt>(XSS)--;>'
echo
echo -e "\e[00;35m# Search for vulnerable DAV with davtest #\e[00m" 
echo
davtest -url http://$1 | cat > "$output_dir/davtest.txt"
echo
echo -e "\e[00;35m# Scan with WPscan #\e[00m" 
echo
wpscan --disable-tls-checks --ignore-main-redirect --user-agent 'Mozilla' -t 10 --force --wp-content-dir wp-content --url https://$1 | cat > "$output_dir/wpscan.txt"
echo
echo -e "\e[00;35m# Web Vulnerability  #\e[00m" 
echo
cd opt
cd golismero
python2 golismero.py -e fingerprint_web scan https://$1 | cat > "$output_dir/golismero2.txt"
echo
echo -e "\e[00;35m# Scan web with Nikto #\e[00m" 
echo
nikto -Plugins 'apache_expect_xss' -host https://$1
nikto -Plugins 'subdomain' -host https://$1
nikto -Plugins 'shellshock' -host https://$1
nikto -Plugins 'cookies' -host https://$1
nikto -Plugins 'put_del_test' -host https://$1
nikto -Plugins 'headers' -host https://$1
nikto -Plugins 'ms10-070' -host https://$1
nikto -Plugins 'msgs' -host https://$1
nikto -Plugins 'outdated' -host https://$1
nikto -Plugins 'httpoptions' -host https://$1
nikto -Plugins 'cgi' -host https://$1
nikto -Plugins 'ssl' -host https://$1
nikto -Plugins 'sitefiles' -host https://$1
nikto -Plugins 'paths' -host https://$1 | cat > "$output_dir/nikto.txt"
echo
echo -e "\e[00;35m# Scan web with wapiti #\e[00m" 
wapiti -u https://$1 -f txt -o temp_wapiti
echo
echo -e "\e[00;35m# Information of domain #\e[00m" 
echo
whois https://$1  | cat > "$output_dir/whois.txt"
echo
echo -e "\e[00;35m# Scan web with CMSmap #\e[00m" 
echo
cd CMSmap
python cmsmap.py https://$1 -f W -F --noedb -v | cat > "$output_dir/cmsmap.txt"
echo
echo -e "\e[00;35m# Web security Scanner Sn1per #\e[00m" 
echo
cd Sn1per
sniper -t https://$1 -m stealth -o -re | cat > "$output_dir/sn1per.txt"
echo
echo -e "\e[00;35m# Attack of RMI with Barmie #\e[00m" 
echo
echo https://$1 | katana  -ps -pss waybackarchive,commoncrawl,alienvault -f qurl | uro > "$output_dir/output.txt"

katana -u https://$1 -silent -d 6  — include-keywords “admin,login,config,api” -c 10 -rl 25 -jc -xhr -kf -fx -fx dn -f qurl -ef woff,css,png,svg,jpg,woff2,jpeg,gif,svg  | uro | anew "$output_dir/output.txt"

echo "Filtering URLs for potential SQLi endpoints..."

grep -Ei '(\?|&|%)(cid|CID|ID|pageid|page_id|id_c|languageId|table_id|action|uuid|contenthistid|fbid|storeId|field|subject_id|topic_id|prodid|nav|pid|ReferenceID|notif_id|fbclid|siteid|uncid|p|id|q|item|cat|product|page|q|param|value)=' "$output_dir/output.txt" | grep -Ei 'union|select|--|#|and|or|like|into|from|drop|/*|' | sort -u > "$output_dir/sqli_output.txt"

if [[ -s "$output_dir/sqli_output.txt" ]]; then
    echo "Filtered SQLi URLs have been saved to: $output_dir/sqli_output.txt"
else
 
fi
