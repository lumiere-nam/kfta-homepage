$files = Get-ChildItem -Filter *.html | Where-Object { $_.Name -ne 'index.html' }
foreach ($f in $files) {
    $c = [System.IO.File]::ReadAllText($f.FullName, [System.Text.Encoding]::UTF8)
    
    $c = $c.Replace('<p class="text-sm mt-4">경기도 용인시 처인구 성산로 667</p>', '<p class="text-sm mt-4 mb-1">경기도 용인시 처인구 포곡읍 성산로 667, 102동 2층 203호 A구역(솔빛마을)</p>
                <p class="text-sm">대표자: 남미화 | 사업자등록번호: 395-44-01406</p>')
                
    $c = $c.Replace('<p class="text-sm mt-4">경기도 용인시 처인구 포곡읍 667</p>', '<p class="text-sm mt-4 mb-1">경기도 용인시 처인구 포곡읍 성산로 667, 102동 2층 203호 A구역(솔빛마을)</p>
                <p class="text-sm">대표자: 남미화 | 사업자등록번호: 395-44-01406</p>')

    [System.IO.File]::WriteAllText($f.FullName, $c, [System.Text.Encoding]::UTF8)
}
