### Arp Tablosundaki Bilgileri Alıyoruz ###
Write-Output "Arp Table:"
arp -a
Write-Output " --------------------------------------------------"

###Routing Tablosunu Görmemizi Sağlıyor###
netstat -r
Write-Output " --------------------------------------------------"

###CPU Bilgilerini Veriyor###
gwmi Win32_processor | Select Name,ProcessId
Write-Output " --------------------------------------------------"


###Kullanıcıların Bilgilerini Veriyor###
gwmi -computer $computer_name Win32_UserAccount | foreach {$_.Name}
Write-Output " --------------------------------------------------"

###Sistem Hakkında Bilgiler###
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
Get-ADDomain 
Write-Output " --------------------------------------------------"
    
###Grup Bilgileri###
Get-ADGroup
Write-Output " --------------------------------------------------"
 
 ###Domain Konrolü Bİlgileri###
Get-ADDomainController 
Write-Output " --------------------------------------------------"

 ###Komut Geçmişini Gösterir###
Get-History 
Write-Output " --------------------------------------------------"

###Çalışan Servisler###
get-service | where-object {$_.Status -eq "Running"} | Select-Object Name
Write-Output " --------------------------------------------------"

