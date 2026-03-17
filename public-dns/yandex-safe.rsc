/ip dns static remove [find name="safe.dot.dns.yandex.net" type="A"]
/ip dns static add name="safe.dot.dns.yandex.net" address=77.88.8.88
/ip dns static add name="safe.dot.dns.yandex.net" address=77.88.8.2

/ip dns static remove [find name="safe.dot.dns.yandex.net" type="AAAA"]
/ip dns static add name="safe.dot.dns.yandex.net" address=2a02:6b8::feed:bad
/ip dns static add name="safe.dot.dns.yandex.net" address=2a02:6b8:0:1::feed:bad

/ip dns set use-doh-server="https://safe.dot.dns.yandex.net/dns-query"

/ip dns forwarders add name="yandex-safe" doh-servers="https://safe.dot.dns.yandex.net/dns-query"
