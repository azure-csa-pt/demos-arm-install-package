<# Custom Script for Windows #>
$storageDir = "C:\Windows\Temp"
$webclient = New-Object System.Net.WebClient
$url = "https://www.python.org/ftp/python/2.7.11/python-2.7.11.msi"
$file = "$storageDir\python-2.7.11.msi"
$webclient.DownloadFile($url,$file)

cd $storageDir
msiexec /i python-2.7.11.msi