/ip dns static remove [find name="dns.quad9.net" type="A"]
/ip dns static add name="dns.quad9.net" address=9.9.9.9
/ip dns static add name="dns.quad9.net" address=149.112.112.112

/ip dns static remove [find name="dns.quad9.net" type="AAAA"]
/ip dns static add name="dns.quad9.net" address=2620:fe::fe
/ip dns static add name="dns.quad9.net" address=2620:fe::9

/ip dns set use-doh-server="https://dns.quad9.net/dns-query"

/ip dns forwarders add name="quad9" doh-servers="https://dns.quad9.net/dns-query"
