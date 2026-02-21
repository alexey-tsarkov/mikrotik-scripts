{
    :local name "unfiltered.adguard-dns.com"

    /ip dns static add name=$name address=94.140.14.140
    /ip dns static add name=$name address=94.140.14.141

    :if (![/ipv6 settings get disable-ipv6]) do={
        /ip dns static add name=$name address=2a10:50c0::1:ff
        /ip dns static add name=$name address=2a10:50c0::2:ff
    }

    /ip dns set servers="" use-doh-server="https://$name/dns-query" verify-doh-cert=yes

    /ip dns forwarders add name="adguard-unfiltered" doh-servers="https://$name/dns-query" verify-doh-cert=yes
}
