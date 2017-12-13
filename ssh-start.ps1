$ssh = Get-VMHost | Get-VMHostService | where {$_.Key -eq "TSM-SSH"}

foreach ($vmhost in (Get-VMHost)){
if ($ssh.Running -eq $true){
		$SSHService | Start-VMHostService -Confirm:$false | select VMHost, Running
	}
	else {
		
		Write-Host "SSH Service on $vmhost is already Started"
	}
 }
