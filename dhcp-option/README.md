# DHCP Vendor-Specific Options (Option 43)

Scripts for adding vendor-specific DHCP options (code 43) to MikroTik RouterOS.

## Description

DHCP option 43 is used to pass vendor-specific settings to clients from specific manufacturers. These scripts allow you to configure additional parameters for Android devices and Microsoft clients.

## Options Table

| Option Name | Code | Value | Description |
|-------------|------|-------|-------------|
| `android-metered` | 43 | `ANDROID_METERED` | Informs Android devices that the network is metered. This affects system behavior: limits background sync, automatic updates, and media downloads. |
| `msft-disable-netbios` | 43 | `0x010400000002` | Disables NetBIOS over TCP/IP on Windows clients. Value `0x02` means "disable NetBIOS". |
| `msft-release-on-shutdown` | 43 | `0x020400000001` | Forces Windows clients to release their DHCP lease on shutdown. Speeds up address release for reuse. |


## Value Formats

- **String values** are specified in single quotes: `'ANDROID_METERED'`
- **Hex values** are specified with the `0x` prefix: `0x010400000002`

## References

- [DHCPv4 Option Code 43 (0x2B)](https://learn.microsoft.com/en-us/openspecs/windows_protocols/ms-dhcpe/4c66312e-64fa-4e3b-a1eb-44de1b8a4c87)
- [RFC 2132](https://datatracker.ietf.org/doc/html/rfc2132)
