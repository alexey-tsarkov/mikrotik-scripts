:if ([/system script job print count-only as-value where script=[:jobname]] > 1) do={
    :error message=("script " . [:jobname] . " already running")
}

:local caname "cacert"
:local cafile "cacert.pem"

/tool fetch url="https://curl.se/ca/$cafile" check-certificate=yes
/certificate remove [find name=$caname]
/certificate import file-name=$cafile name=$caname
