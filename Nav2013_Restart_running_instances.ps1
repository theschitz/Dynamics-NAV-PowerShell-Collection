<# Load CMDlets #>
#Import-Module 'C:\Program Files (x86)\Microsoft Dynamics NAV\70\RoleTailored Client\Microsoft.Dynamics.Nav.Model.Tools.psd1' -WarningAction SilentlyContinue | out-null
Import-Module 'C:\Program Files\Microsoft Dynamics NAV\70\Service\NavAdminTool.ps1' -WarningAction SilentlyContinue | Out-Null

$Instances = Get-NAVServerInstance

for ($i = 0; $i -le $Instances.Count - 1; $i++) {    
    if ($Instances[$i].State -eq 'Running') {        
		Restart-Service $Instances[$i].Name
    }
}