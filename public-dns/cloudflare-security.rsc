/ip dns static remove [find name="security.cloudflare-dns.com" type="A"]
/ip dns static add name="security.cloudflare-dns.com" address=1.1.1.2
/ip dns static add name="security.cloudflare-dns.com" address=1.0.0.2

/ip dns static remove [find name="security.cloudflare-dns.com" type="AAAA"]
/ip dns static add name="security.cloudflare-dns.com" address=2606:4700:4700::1112
/ip dns static add name="security.cloudflare-dns.com" address=2606:4700:4700::1002

/ip dns set use-doh-server="https://security.cloudflare-dns.com/dns-query"

/ip dns forwarders add name="cloudflare-security" doh-servers="https://security.cloudflare-dns.com/dns-query"
