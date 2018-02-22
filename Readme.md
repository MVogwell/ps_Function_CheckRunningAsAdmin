## ps_Function_CheckRunningAsAdmin.ps1

MVogwell - 22-02-18

## Synopsis

Powershell FUNCTION for testing whether the user of the current Powershell session is a member of the domain admins group

	
## Motivation

Use this if your script has to have administrator access to the machine to complete successfully


## Installation / Running the function

No installation required.

To include in a script copy the file ps_Function_CheckRunningAsAdmin.ps1 to the same folder as your main script is saved to.  

At the top of your main script add the line:

. .\ps_Function_CheckRunningAsAdmin.ps1

You can then call the function by adding at the required point:

<Boolean variable> = ps_Function_CheckRunningAsAdmin


# Example

See Example_ps_Function_CheckRunningAsAdmin.ps1 for an example of how to use the function

## License
	Free to use, change, and distribute. 

## Disclaimer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


## Further information

System.Security.Principal.WindowsIdentity -- https://msdn.microsoft.com/en-us/library/system.security.principal.windowsidentity(v=vs.110).aspx
Info on Well Known Security Identifiers in Windows: https://support.microsoft.com/en-gb/help/243330/well-known-security-identifiers-in-windows-operating-systems