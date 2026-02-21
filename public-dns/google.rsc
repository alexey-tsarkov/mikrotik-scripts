/ip dns static remove [find name="dns.google" type="A"]
/ip dns static add name="dns.google" address=8.8.8.8
/ip dns static add name="dns.google" address=8.8.4.4

/ip dns static remove [find name="dns.google" type="AAAA"]
/ip dns static add name="dns.google" address=2001:4860:4860::8888
/ip dns static add name="dns.google" address=2001:4860:4860::8844

/ip dns set use-doh-server="https://dns.google/dns-query"

/ip dns forwarders add name="google" doh-servers="https://dns.google/dns-query"
