$files = Get-ChildItem -Filter *.html | Where-Object { $_.Name -ne 'index.html' }
foreach ($f in $files) {
    $c = Get-Content $f.FullName -Raw -Encoding UTF8
    $c = $c -replace '<h2 class="font-serif text-3xl text-white mb-2 tracking-widest">KFTA</h2>\s*<p class="font-bold text-white/90">한국패션테라피협회</p>', '<h2 class="font-serif text-3xl text-white mb-2 tracking-widest">캄온(calm:on)</h2>
                <p class="font-bold text-white/90">패션테라피 교육 브랜드 - 한국패션테라피협회 (KFTA)</p>'
    $c = $c -replace '&copy; 2026 Korea Fashion Therapy Association\.', '&copy; 2026 calm:on / Korea Fashion Therapy Association.'
    Set-Content $f.FullName $c -Encoding UTF8
}
