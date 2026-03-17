/ip dns static remove [find name="dns10.quad9.net" type="A"]
/ip dns static add name="dns10.quad9.net" address=9.9.9.10
/ip dns static add name="dns10.quad9.net" address=149.112.112.10

/ip dns static remove [find name="dns10.quad9.net" type="AAAA"]
/ip dns static add name="dns10.quad9.net" address=2620:fe::10
/ip dns static add name="dns10.quad9.net" address=2620:fe::fe:10

/ip dns set use-doh-server="https://dns10.quad9.net/dns-query"

/ip dns forwarders add name="quad9-unsecured" doh-servers="https://dns10.quad9.net/dns-query"
