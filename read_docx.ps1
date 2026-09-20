Add-Type -AssemblyName System.IO.Compression.FileSystem
$zip = [System.IO.Compression.ZipFile]::OpenRead('C:\lumi\교재\패션테라피_레벨1_교재_v1_1.docx')
$entry = $zip.Entries | Where-Object { $_.FullName -eq 'word/document.xml' }
$stream = $entry.Open()
$reader = New-Object System.IO.StreamReader($stream)
$xml = [xml]$reader.ReadToEnd()
$nsm = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
$nsm.AddNamespace('w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main')
$nodes = $xml.SelectNodes('//w:t', $nsm)
$text = $nodes | ForEach-Object { $_.InnerText }
$text -join ' ' | Out-File -Encoding UTF8 level1.txt
$reader.Close()
$stream.Close()
$zip.Dispose()
