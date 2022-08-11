get-ciminstance win32_networkadapterconfiguration | where-object ipenabled -eq $true | format-table Description,Index,ipaddress,IPSubnet,DNSDomain,DNSServerSearchOrder
