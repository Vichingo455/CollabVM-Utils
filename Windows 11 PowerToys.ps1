$download_url = "https://github.com/builtbybel/ThisIsWin11/releases/download/0.94.10/TIW11.zip"
$local_path = "ThisIsWin11.zip"
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($download_url, $local_path)
