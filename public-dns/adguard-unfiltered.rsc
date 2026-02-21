/ip dns static remove [find name="unfiltered.adguard-dns.com" type="A"]
/ip dns static add name="unfiltered.adguard-dns.com" address=94.140.14.140
/ip dns static add name="unfiltered.adguard-dns.com" address=94.140.14.141

/ip dns static remove [find name="unfiltered.adguard-dns.com" type="AAAA"]
/ip dns static add name="unfiltered.adguard-dns.com" address=2a10:50c0::1:ff
/ip dns static add name="unfiltered.adguard-dns.com" address=2a10:50c0::2:ff

/ip dns set use-doh-server="https://unfiltered.adguard-dns.com/dns-query"

/ip dns forwarders add name="adguard-unfiltered" doh-servers="https://unfiltered.adguard-dns.com/dns-query"
