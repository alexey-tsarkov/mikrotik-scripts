/ip dns static remove [find name="dns11.quad9.net" type="A"]
/ip dns static add name="dns11.quad9.net" address=9.9.9.11
/ip dns static add name="dns11.quad9.net" address=149.112.112.11

/ip dns static remove [find name="dns11.quad9.net" type="AAAA"]
/ip dns static add name="dns11.quad9.net" address=2620:fe::11
/ip dns static add name="dns11.quad9.net" address=2620:fe::fe:11

/ip dns set use-doh-server="https://dns11.quad9.net/dns-query"

/ip dns forwarders add name="quad9-secured" doh-servers="https://dns11.quad9.net/dns-query"
