/ip dns static remove [find name="dns.adguard-dns.com" type="A"]
/ip dns static add name="dns.adguard-dns.com" address=94.140.14.14
/ip dns static add name="dns.adguard-dns.com" address=94.140.15.15

/ip dns static remove [find name="dns.adguard-dns.com" type="AAAA"]
/ip dns static add name="dns.adguard-dns.com" address=2a10:50c0::ad1:ff
/ip dns static add name="dns.adguard-dns.com" address=2a10:50c0::ad2:ff

/ip dns set use-doh-server="https://dns.adguard-dns.com/dns-query"

/ip dns forwarders add name="adguard" doh-servers="https://dns.adguard-dns.com/dns-query"
