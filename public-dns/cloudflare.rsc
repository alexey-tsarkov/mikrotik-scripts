/ip dns static remove [find name="one.one.one.one" type="A"]
/ip dns static add name="one.one.one.one" address=1.1.1.1
/ip dns static add name="one.one.one.one" address=1.0.0.1

/ip dns static remove [find name="one.one.one.one" type="AAAA"]
/ip dns static add name="one.one.one.one" address=2606:4700:4700::1111
/ip dns static add name="one.one.one.one" address=2606:4700:4700::1001

/ip dns set use-doh-server="https://one.one.one.one/dns-query"

/ip dns forwarders add name="cloudflare" doh-servers="https://one.one.one.one/dns-query"
