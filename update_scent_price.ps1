$c = Get-Content academy.html -Raw -Encoding UTF8
$c = $c -replace '(?s)나만의 시그니처 무드향</h4>(.*?)가격: 400,000원', '나만의 시그니처 무드향</h4>$1가격: 100,000원 (단, 2인 이상)'
Set-Content academy.html $c -Encoding UTF8

$c2 = Get-Content academy_oneday.html -Raw -Encoding UTF8
$c2 = $c2 -replace '후각적 테라피 \(400,000원 / 120분\)', '후각적 테라피 (100,000원 / 120분 / 단, 2인 이상)'
Set-Content academy_oneday.html $c2 -Encoding UTF8

$c3 = Get-Content academy_oneday_scent.html -Raw -Encoding UTF8
$c3 = $c3 -replace '가격: 400,000원 / 소요 시간: 120분', '가격: 100,000원 (단 2인 이상 신청가능) / 소요 시간: 120분'
Set-Content academy_oneday_scent.html $c3 -Encoding UTF8

$c4 = Get-Content generate_pages.py -Raw -Encoding UTF8
$c4 = $c4 -replace '후각적 테라피 \(400,000원 / 120분\)', '후각적 테라피 (100,000원 / 120분 / 단, 2인 이상)'
Set-Content generate_pages.py $c4 -Encoding UTF8
