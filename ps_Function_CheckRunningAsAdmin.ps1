###############################
# MVogwell - 22-02-18
#
# Powershell FUNCTION: check if the user is running with admin rights and returns a boolean
#
# True = Running with Admin rights
# False = NOT running with Admin rights
#

Function ps_Function_CheckRunningAsAdmin {
	[CmdletBinding()]
	param()

	# Constructor
	[bool]$bRunningAsAdmin = $False
	
	Try {
		# Attempt to check if the current powershell session is being run with admin rights
		# System.Security.Principal.WindowsIdentity -- https://msdn.microsoft.com/en-us/library/system.security.principal.windowsidentity(v=vs.110).aspx
		# Info on Well Known Security Identifiers in Windows: https://support.microsoft.com/en-gb/help/243330/well-known-security-identifiers-in-windows-operating-systems
		
		write-verbose "ps_Function_CheckRunningAsAdmin :: Checking for admin rights"
		$bRunningAsAdmin = [bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")
	}
	Catch {
		$bRunningAsAdmin = $False
		write-verbose "ps_Function_CheckRunningAsAdmin :: ERROR Checking for admin rights in current session"
		write-verbose "ps_Function_CheckRunningAsAdmin :: Error: $($Error[0].Exception)"
	}
	Finally {}
	
	write-verbose "ps_Function_CheckRunningAsAdmin :: Result :: $bRunningAsAdmin"
	
	# Return result from function
	return $bRunningAsAdmin
	
}

