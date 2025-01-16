$ListType=$args[0]
$Entries=$args[1]
Connect-ExchangeOnline -CertificateFilePath $CertificateFilePath `
 -CertificatePassword (ConvertTo-SecureString -String $pfxPassword -AsPlainText -Force) `
 -AppID $appID `
 -Organization $tenantID
$Result=New-TenantAllowBlockListItems -ListType $ListType -Block -Entries $Entries
Disconnect-ExchangeOnline -Confirm:$false
return $Result