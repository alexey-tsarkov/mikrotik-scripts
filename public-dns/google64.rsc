{
    :local name "dns64.dns.google"

    /ip dns static add name=$name address=2001:4860:4860::6464
    /ip dns static add name=$name address=2001:4860:4860::64

    /ip dns set use-doh-server="https://$name/dns-query"

    /ip dns forwarders add name="google64" doh-servers="https://$name/dns-query"
}
