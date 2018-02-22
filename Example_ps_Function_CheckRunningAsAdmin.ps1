###############################
# MVogwell - 22-02-18
#
# Example of how to use ps_Function_CheckRunningAsAdmin
#

[CmdletBinding()]
param()

. .\ps_Function_CheckRunningAsAdmin.ps1

$bResult = ps_Function_CheckRunningAsAdmin

write-host ""
write-host ""
write-host "Result of checking if you're running powershell with a user of the Administrators group: $bResult"
write-host ""
write-host ""
