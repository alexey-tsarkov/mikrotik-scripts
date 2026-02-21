/ip dns static remove [find name="dns64.dns.google" type="A"]
/ip dns static remove [find name="dns64.dns.google" type="AAAA"]
/ip dns static add name="dns64.dns.google" address=2001:4860:4860::6464
/ip dns static add name="dns64.dns.google" address=2001:4860:4860::64

/ip dns set use-doh-server="https://dns64.dns.google/dns-query"

/ip dns forwarders add name="google64" doh-servers="https://dns64.dns.google/dns-query"
