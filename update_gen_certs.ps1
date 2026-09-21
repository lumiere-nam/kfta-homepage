$content = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\gen_certs.ps1", [System.Text.Encoding]::UTF8)
$content = $content.Replace('-Price "870,000원"', '-Price "1,500,000원"')
$content = $content.Replace('-Price "1,600,000원"', '-Price "2,000,000원"')
$content = $content.Replace('-Price "2,800,000원"', '-Price "2,500,000원"')
$content = $content.Replace('-Price "개별 안내 예정"', '-Price "2,700,000원"') # Wait, maybe they were different. Let's just use regex for trainer and master.
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\gen_certs.ps1", $content, [System.Text.Encoding]::UTF8)
