$ID = $args[0]
Connect-ExchangeOnline -ShowBanner:$false
Release-QuarantineEmail -Identity $ID -ActionType Deny -ReleaseToAll -ReportFalsePositive
# https://learn.microsoft.com/en-us/powershell/module/exchange/release-quarantinemessage?view=exchange-ps
Disconnect-ExchangeOnline -Confirm:$false