/ip dns static remove [find name="family.dot.dns.yandex.net" type="A"]
/ip dns static add name="family.dot.dns.yandex.net" address=77.88.8.7
/ip dns static add name="family.dot.dns.yandex.net" address=77.88.8.3

/ip dns static remove [find name="family.dot.dns.yandex.net" type="AAAA"]
/ip dns static add name="family.dot.dns.yandex.net" address=2a02:6b8::feed:a11
/ip dns static add name="family.dot.dns.yandex.net" address=2a02:6b8:0:1::feed:a11

/ip dns set use-doh-server="https://family.dot.dns.yandex.net/dns-query"

/ip dns forwarders add name="yandex-family" doh-servers="https://family.dot.dns.yandex.net/dns-query"
