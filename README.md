# MikroTik RouterOS Scripts

A collection of useful scripts for MikroTik RouterOS.

## License

This project is licensed under [CC0 1.0 Universal](LICENSE) - Public Domain.

## Scripts

### CA Certificate Update (`cacert-update.rsc`)

Automatically downloads and installs the latest CA certificate bundle from curl.se. This is useful for keeping your router's certificate store up to date for secure HTTPS connections.

**Usage:**
```routeros
/system script run cacert-update
```

### Public DNS Configurations (`public-dns/`)

Ready-to-use DNS-over-HTTPS (DoH) configurations for popular public DNS providers.

#### Cloudflare
- `cloudflare.rsc` - Standard Cloudflare DNS (1.1.1.1)
- `cloudflare-security.rsc` - Cloudflare Security (blocks malware)
- `cloudflare-family.rsc` - Cloudflare Family (blocks malware + adult content)

#### AdGuard DNS
- `adguard.rsc` - Standard AdGuard DNS
- `adguard-family.rsc` - AdGuard Family (blocks ads, trackers, malware + adult content)
- `adguard-unfiltered.rsc` - Unfiltered AdGuard DNS

#### Google DNS
- `google.rsc` - Google Public DNS (IPv4)
- `google64.rsc` - Google Public DNS (IPv6)

#### Quad9
- `quad9.rsc` - Standard Quad9 DNS
- `quad9-secured.rsc` - Quad9 Secured (blocks malware)
- `quad9-unsecured.rsc` - Quad9 Unsecured

#### Yandex DNS
- `yandex.rsc` - Standard Yandex DNS
- `yandex-safe.rsc` - Yandex Safe (blocks malware)
- `yandex-family.rsc` - Yandex Family (blocks malware + adult content)

**Usage:**
```routeros
/system script run public-dns/cloudflare
```

## Installation

1. Upload the desired `.rsc` files to your MikroTik router:
   ```bash
   # Using SCP
   scp cacert-update.rsc admin@router:/flash/scripts/

   # Or using WinBox: Files → Drag and drop
   ```

2. Import the script:
   ```routeros
   /system script import file-name=scripts/cacert-update.rsc
   ```

3. Run the script:
   ```routeros
   /system script run cacert-update
   ```

## Requirements

- MikroTik RouterOS v7+ (for DNS forwarders support)
- Internet connectivity for fetching remote resources

## Notes

- DNS scripts configure both legacy DNS static entries and DoH forwarders (RouterOS v7+)
- Test scripts in a lab environment before deploying to production
- Always backup your configuration before running new scripts

## Contributing

Feel free to submit issues and enhancement requests.
