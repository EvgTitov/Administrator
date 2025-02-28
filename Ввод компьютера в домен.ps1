$domain = Read-Host "Select domain name"
$cred = Get-Credential -Message "Enter your credentials to join the domain"
Add-Computer -DomainName $domain -Credential $cred -Restart