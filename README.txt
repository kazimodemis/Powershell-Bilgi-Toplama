#####
   Powershell, sistem yöneticileri ve uzman kullanıcılar için tasarlanmış komut satırı bazında bir kodlama dilidir. .NET Framework kütüphanesini destekler, Powershell Kullanıcılar için windows’da çalışır durumda olan uygulamaların yönetimini ve denetlemelerini otomatize etmesine yardımcı olur.
#####
   Cmdlets en basit anlamda PowerShell’in yeni komut setidir diyebiliriz. Fakat bu komutlar standart çalıştırılabilir (executable) dosyalar şeklinde değilde .NET fonksiyonları şeklinde çalışmaktadır. .NET programlama dillerinin namespace mantığı da burda kullanılmıştır. Her komut VERB-NOUN yani Fiil-İsim şeklinde tanımlanmıştır. Bir örnek vermek  gerekirse “Get-Process” komutu (cmdlets) çalışan uygulamaların bir listesini vermektedir. “Stop-Process” komutu çalışan bir uygulamayı durdurmak için kullanılır. Aynı şekilde tanımlanmış “Get-Service” ve “Stop-Service” komutları servisleri listeler ve durdurur. Komutlar bu şekilde benzer yapılarda tanımlanmış olması komut öğrenmeyi kolaylaştırmak adına gerçekten önemlidir.

   “Get-Command” komutuyla kullanılabilir cmdlets listesini alabilirsiniz.
#####
   Powershell üzerinde script çalıştırabilmek için  ;
"Set-ExecutionPolicy RemoteSigned" veya "Set-ExecutionPolicy Unrestricted" komutlarından biri kullanılmalıdır.
#####
   Scriptimizdeki bazı komutları çalıştırabilmek için PowerShell terminalimizde "import ActiveDirectory" komutu ile Active Directory modülümüzü eklememiz gerekmektedir.
#############################################################################################################
    *arp -a ----->>>> Arp tablosu bilgilerini bizlere gösterir.
    *netstat -r-----> Sistem üzerindeki tüm bağlantıları gösterir.
    *gwmi Win32_processor | Select Name,ProcessId-------> İşlemci adı ve process id'sini elde ederiz.
    *gwmi -computer $computer_name Win32_UserAccount | foreach {$_.Name}--> Bilgisayarda kayıtlı olan kullanıcı isimlerini listeler
    
    *systeminfo | findstr "OS" | findstr "Name:" ------> İşletim Sistemi Adı
    *systeminfo | findstr "OS"| findstr "Version:" -------> İşletim Sistemi versiyonu
    *systeminfo | findstr "OS"| findstr "Build Type:" --------->  İşletim Sistemi 64 Bit & 32 Bit
    *systeminfo | findstr "System" | findstr "Type:" -------->   Sistem tipi
    *systeminfo | findstr "System" | findstr "Model:" -------> Anakartın modeli
    *systeminfo | findstr "Registered" | findstr "Owner: " --------->  Kurulumu yapan Kullanıcı Adı
    *systeminfo | findstr "BIOS Version:"-------->   Bios versiyonu
    
    *Get-ADDomain --> Domain bilgilerini verir
    *Get-ADGroup --> Grup bilgilerini elde ederiz
    *Get-ADDomainController --> Domain controller bilgilerini elde ederiz.
    *get-service | where-object {$_.Status -eq "Running"} | Select-Object Name --> Çalışan servisleri listeler
  
 
   
