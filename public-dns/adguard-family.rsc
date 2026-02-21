/ip dns static remove [find name="family.adguard-dns.com" type="A"]
/ip dns static add name="family.adguard-dns.com" address=94.140.14.15
/ip dns static add name="family.adguard-dns.com" address=94.140.15.16

/ip dns static remove [find name="family.adguard-dns.com" type="AAAA"]
/ip dns static add name="family.adguard-dns.com" address=2a10:50c0::bad1:ff
/ip dns static add name="family.adguard-dns.com" address=2a10:50c0::bad2:ff

/ip dns set use-doh-server="https://family.adguard-dns.com/dns-query"

/ip dns forwarders add name="adguard-family" doh-servers="https://family.adguard-dns.com/dns-query"
