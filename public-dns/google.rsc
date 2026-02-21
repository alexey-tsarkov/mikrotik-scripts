{
    :local name "dns.google"

    /ip dns static add name=$name address=8.8.8.8
    /ip dns static add name=$name address=8.8.4.4

    :if (![/ipv6 settings get disable-ipv6]) do={
        /ip dns static add name=$name address=2001:4860:4860::8888
        /ip dns static add name=$name address=2001:4860:4860::8844
    }

    /ip dns set use-doh-server="https://$name/dns-query"

    /ip dns forwarders add name="google" doh-servers="https://$name/dns-query"
}
