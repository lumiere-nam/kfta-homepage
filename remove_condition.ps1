$files = Get-ChildItem -Path . -Recurse -Include *.html
foreach ($f in $files) {
    $c = [System.IO.File]::ReadAllText($f.FullName, [System.Text.Encoding]::UTF8)
    $c = $c.Replace(' <span class="text-kftaRed font-bold">(단, 2인 이상 신청가능)</span>', '')
    $c = $c.Replace(' / 단, 2인 이상 신청가능', '')
    $c = $c.Replace(' (단 2인 이상 신청가능)', '')
    [System.IO.File]::WriteAllText($f.FullName, $c, [System.Text.Encoding]::UTF8)
}
