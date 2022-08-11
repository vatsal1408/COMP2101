#Title: Hardware Information

function systemdescription
{
    "===Hardware Information==="
    Get-WmiObject win32_computersystem 
}
systemdescription

#Title: OperatingSystem Information

function Os
{
"=====OperatingSystem Information===="
Get-wmiobject win32_operatingsystem | select-object name,version | format-list *
}
Os

#Title: Processor Information

function processor
 {
 "====Processor Information====="
 Get-wmiobject win32_processor | select-object CurrentClockSpeed,NumberofCores,L1CacheSize,L2CacheSize,L3CacheSize | format-list *
 }
Processor

#Title: Memory Information

function ram {
"========Physicalmemory info========"

    $a= 0
    get-wmiobject -class win32_physicalmemory |
    foreach { 
            new-object -TypeName psobject -property @{
                Vendor = $_.manufacturer
                description= $_.description
                "Size(MB)" = $_.capacity
                Bank = $_.banklabel
                Slot = $_.devicelocator
         
                
         }
    $a += $_.capacity     
    }|
    ft Vendor, Description , "Size(MB)","Bank",Slot
    "TotalRam = $a"
}
ram

#Title: Disk Information 

function disk{	
$diskdrives = Get-CIMInstance CIM_diskdrive

  foreach ($disk in $diskdrives) {
      $partitions = $disk|get-cimassociatedinstance -resultclassname CIM_diskpartition
      foreach ($partition in $partitions) {
            $logicaldisks = $partition | get-cimassociatedinstance -resultclassname CIM_logicaldisk
            foreach ($logicaldisk in $logicaldisks) {
                     new-object -typename psobject -property @{Manufacturer=$disk.Manufacturer
                                                               Location=$partition.deviceid
                                                               Drive=$logicaldisk.deviceid
                                                               "Size(GB)"=$logicaldisk.size / 1gb -as [int]
                                                               }
           }
      }
  }
}	

#Title: Network Information

function Network{
"=======Network adapter Information========"
get-ciminstance win32_networkadapterconfiguration | where-object ipenabled -eq $true | format-table Description,Index,ipaddress,IPSubnet,DNSDomain,DNSServerSearchOrder
}
Network

#Title: Videocard Information

function videoCard {
"=====VideoCard Information====="
Get-WmiObject win32_videocontroller | Select-Object Manufacturer,Description,VideoModeDescription | format-list *
}
videocard