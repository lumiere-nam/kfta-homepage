Add-Type -AssemblyName System.IO.Compression.FileSystem
foreach ($file in $args) {
    $zip = [System.IO.Compression.ZipFile]::OpenRead($file)
    $entry = $zip.Entries | Where-Object { $_.FullName -eq 'word/document.xml' }
    $stream = $entry.Open()
    $reader = New-Object System.IO.StreamReader($stream)
    $xml = [xml]$reader.ReadToEnd()
    $nsm = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
    $nsm.AddNamespace('w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main')
    $nodes = $xml.SelectNodes('//w:t', $nsm)
    $text = $nodes | ForEach-Object { $_.InnerText }
    $fulltext = $text -join ' '
    
    "
--- $file ---
" | Out-File -Encoding UTF8 -Append all_curriculum.txt
    $fulltext.Substring(0, [math]::Min($fulltext.Length, 1500)) | Out-File -Encoding UTF8 -Append all_curriculum.txt
    
    $reader.Close()
    $stream.Close()
    $zip.Dispose()
}
