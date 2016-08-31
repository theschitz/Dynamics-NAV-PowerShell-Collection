# Load CMDlets
Import-Module 'C:\Program Files (x86)\Microsoft Dynamics NAV\90\RoleTailored Client\Microsoft.Dynamics.Nav.Model.Tools.psd1' -WarningAction SilentlyContinue | out-null
Import-Module 'C:\Program Files\Microsoft Dynamics NAV\90\Service\NavAdminTool.ps1' -WarningAction SilentlyContinue | Out-Null

$SplitSource  = 'C:\temp\split.txt'
$SplitDestination = 'C:\temp\objects\'
#$JoinSource = 'C:\temp\objects\'
#$JoinDestination = 'C:\temp\join.txt'

Split-NAVApplicationObjectFile -Source $SplitSource -Destination $SplitDestination

#Join-NAVApplicationObjectFile -Source $JoinSource -Destination $JoinDestination
