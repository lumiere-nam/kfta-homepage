$files = @{
    "academy.html" = @(
        @{ old = '<span>가격: 400,000원</span>'; new = '<span>가격: 100,000원 (단, 2인 이상)</span>' }
    ),
    "academy_oneday.html" = @(
        @{ old = '후각적 테라피 (400,000원 / 120분)'; new = '후각적 테라피 (100,000원 / 120분 / 단, 2인 이상 신청가능)' },
        @{ old = '나이듦의 긍정 (400,000원 / 120분)'; new = '나이듦의 긍정 (200,000원 / 120분)' }
    ),
    "academy_oneday_scent.html" = @(
        @{ old = '가격: 400,000원 / 소요 시간: 120분'; new = '가격: 100,000원 (단 2인 이상 신청가능) / 소요 시간: 120분' }
    ),
    "academy_oneday_beauty.html" = @(
        @{ old = '가격: 400,000원 / 소요 시간: 120분'; new = '가격: 200,000원 / 소요 시간: 120분' }
    )
}

foreach ($file in $files.Keys) {
    if (Test-Path $file) {
        $c = [System.IO.File]::ReadAllText((Resolve-Path $file).Path, [System.Text.Encoding]::UTF8)
        foreach ($repl in $files[$file]) {
            $c = $c.Replace($repl.old, $repl.new)
        }
        [System.IO.File]::WriteAllText((Resolve-Path $file).Path, $c, [System.Text.Encoding]::UTF8)
    }
}
