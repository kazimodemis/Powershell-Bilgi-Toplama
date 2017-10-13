### Arp Tablosundaki Bilgileri Alıyoruz ###
Write-Output "Arp Table:"
arp -a
Write-Output " --------------------------------------------------"

###Routing Tablosunu Görmemizi Sağlıyor###
Write-Output "Routing Table:"
netstat -r
Write-Output " --------------------------------------------------"

###CPU Bilgilerini Veriyor###
Write-Output "CPU:"
gwmi Win32_processor | Select Name,ProcessId
Write-Output " --------------------------------------------------"


###Kullanıcıların Bilgilerini Veriyor###
Write-Output "USERS:"
gwmi -computer $computer_name Win32_UserAccount | foreach {$_.Name}
Write-Output " --------------------------------------------------"

###Sistem Hakkında Bilgiler###
Write-Output "Sistem Bilgi:"
systeminfo | findstr "OS" | findstr "Name:"
systeminfo | findstr "OS"| findstr "Version:" 
systeminfo | findstr "OS"| findstr "Build Type:" 
systeminfo | findstr "System" | findstr "Type:" 
systeminfo | findstr "System" | findstr "Model:" 
systeminfo | findstr "Registered" | findstr "Owner: " 
systeminfo | findstr "BIOS Version:"
Write-Output " --------------------------------------------------"

###Planlı İşleri Listeler###
schtasks
Write-Output " --------------------------------------------------"

###Domain Bilgileri###
Write-Output "Domain:"
Get-ADDomain 
Write-Output " --------------------------------------------------"
    
###Grup Bilgileri###
Write-Output "Grup:"
Get-ADGroup
Write-Output " --------------------------------------------------"
 
 ###Domain Konrolü Bİlgileri###
Get-ADDomainController 
Write-Output " --------------------------------------------------"

 ###Komut Geçmişini Gösterir###
 Write-Output "Komut Geçmişi:"
 Get-History 
 Write-Output " --------------------------------------------------"

###Çalışan Servisler###
get-service | where-object {$_.Status -eq "Running"} | Select-Object Name
Write-Output " --------------------------------------------------"
