$files = Get-ChildItem -Filter *.html
foreach ($f in $files) {
    $c = Get-Content $f.FullName -Raw -Encoding UTF8
    
    # Update Footer Address
    $c = $c -replace '<p class="text-sm mt-4">경기도 용인시 처인구 성산로 667</p>', '<p class="text-sm mt-4 mb-1">경기도 용인시 처인구 포곡읍 성산로 667, 102동 2층 203호 A구역 (솔빛마을)</p>
                <p class="text-sm">대표자: 남미화 | 사업자등록번호: 395-44-01406</p>'
                
    $c = $c -replace '<p class="text-sm mt-4">경기도 용인시 처인구 포곡읍 667</p>', '<p class="text-sm mt-4 mb-1">경기도 용인시 처인구 포곡읍 성산로 667, 102동 2층 203호 A구역 (솔빛마을)</p>
                <p class="text-sm">대표자: 남미화 | 사업자등록번호: 395-44-01406</p>'

    # Update VISIT US Address
    $c = $c -replace '경기도 용인시 처인구 성산로 667<br>\s*102동 1F 203호 A구역 \(1F 위치\)', '경기도 용인시 처인구 포곡읍 성산로 667<br>102동 2층 203호 A구역 (솔빛마을)'

    Set-Content $f.FullName $c -Encoding UTF8
}
