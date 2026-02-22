/ip dns static remove [find name="family.cloudflare-dns.com" type="A"]
/ip dns static add name="family.cloudflare-dns.com" address=1.1.1.3
/ip dns static add name="family.cloudflare-dns.com" address=1.0.0.3

/ip dns static remove [find name="family.cloudflare-dns.com" type="AAAA"]
/ip dns static add name="family.cloudflare-dns.com" address=2606:4700:4700::1113
/ip dns static add name="family.cloudflare-dns.com" address=2606:4700:4700::1003

/ip dns set use-doh-server="https://family.cloudflare-dns.com/dns-query"

/ip dns forwarders add name="cloudflare-family" doh-servers="https://family.cloudflare-dns.com/dns-query"
