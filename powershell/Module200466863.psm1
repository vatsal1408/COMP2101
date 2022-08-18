
function welcome {
write-output "Welcome to planet $env:computername Overlord $env:username"
$now = get-date -format 'HH:MM tt on dddd'
write-output "It is $now."
}

function get-cpuinfo {
get-ciminstance cim_processor | select-object Manufacturer,Caption,MaxClockspeed,Name
}

function get-mydisks{
Get-PhysicalDisk | ft -Autosize Manufacturer,Model,SerialNumber,Firmwareversion,Size
 }