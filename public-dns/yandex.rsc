/ip dns static remove [find name="common.dot.dns.yandex.net" type="A"]
/ip dns static add name="common.dot.dns.yandex.net" address=77.88.8.8
/ip dns static add name="common.dot.dns.yandex.net" address=77.88.8.1

/ip dns static remove [find name="common.dot.dns.yandex.net" type="AAAA"]
/ip dns static add name="common.dot.dns.yandex.net" address=2a02:6b8::feed:0ff
/ip dns static add name="common.dot.dns.yandex.net" address=2a02:6b8:0:1::feed:0ff

/ip dns set use-doh-server="https://common.dot.dns.yandex.net/dns-query"

/ip dns forwarders add name="yandex" doh-servers="https://common.dot.dns.yandex.net/dns-query"
