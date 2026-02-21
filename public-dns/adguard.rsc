{
    :local name "dns.adguard-dns.com"

    /ip dns static add name=$name address=94.140.14.14
    /ip dns static add name=$name address=94.140.15.15

    :if (![/ipv6 settings get disable-ipv6]) do={
        /ip dns static add name=$name address=2a10:50c0::ad1:ff
        /ip dns static add name=$name address=2a10:50c0::ad2:ff
    }

    /ip dns set use-doh-server="https://$name/dns-query"

    /ip dns forwarders add name="adguard" doh-servers="https://$name/dns-query"
}
