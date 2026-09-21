function Update-File {
    param($FileName, $Replacements, $RegexReplacements)
    if (Test-Path $FileName) {
        $path = (Resolve-Path $FileName).Path
        $c = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
        
        if ($Replacements) {
            foreach ($key in $Replacements.Keys) {
                $c = $c.Replace($key, $Replacements[$key])
            }
        }
        if ($RegexReplacements) {
            foreach ($key in $RegexReplacements.Keys) {
                $c = [regex]::Replace($c, $key, $RegexReplacements[$key], [System.Text.RegularExpressions.RegexOptions]::Singleline)
            }
        }
        
        [System.IO.File]::WriteAllText($path, $c, [System.Text.Encoding]::UTF8)
    }
}

# 1. academy.html
Update-File "academy.html" $null @{
    '(<h4 class="font-bold text-lg text-kftaGreen mb-3">나만의 시그니처 무드향</h4>.*?<div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">\s*)<span>가격: 400,000원</span>' = '${1}<span>가격: 100,000원 (단, 2인 이상 신청가능)</span>'
    '(<h4 class="font-bold text-lg text-kftaGreen mb-3">4050 뷰티큐레이션</h4>.*?<div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">\s*)<span>가격: 400,000원</span>' = '${1}<span>가격: 200,000원</span>'
}

# 2. academy_oneday.html
Update-File "academy_oneday.html" @{
    '후각적 테라피 (400,000원 / 120분)' = '후각적 테라피 (100,000원 / 120분 / 2인 이상 신청가능)'
    '나이듦의 긍정 (400,000원 / 120분)' = '나이듦의 긍정 (200,000원 / 120분)'
} $null

# 3. academy_oneday_scent.html
Update-File "academy_oneday_scent.html" @{
    '가격: 400,000원 / 소요 시간: 120분' = '가격: 100,000원 (단 2인 이상 신청가능) / 소요 시간: 120분'
} $null

# 4. academy_oneday_beauty.html
Update-File "academy_oneday_beauty.html" @{
    '가격: 400,000원 / 소요 시간: 120분' = '가격: 200,000원 / 소요 시간: 120분'
} $null

# 5. academy_kids.html
$oldKids1 = '나뭇잎, 꽃, 열매 등 자연의 재료와 다양한 미술 용품들을 활용해 화폭에 콜라주 작업을 하며 나만의 취향과 감정을 표현하는 창의 미술 테라피입니다.'
$newKids1 = '나뭇잎, 꽃, 열매 등 자연의 재료와 원단 스와치(원단 샘플), 그리고 다양한 미술 용품들을 활용해 화폭에 콜라주 작업을 하며 나만의 취향과 감정을 표현하는 창의 패션테라피입니다.'

$oldKids2 = '정해진 정답 없이 나만의 색채로 패션 아이템을 채색하며 스트레스를 해소하고, 아이의 자기 긍정감과 자율성을 기르는 프로그램입니다.'
$newKids2 = '정해진 정답 없이 나만의 색채로 다양한 패션 실루엣과 스타일링 요소를 채색하며 스트레스를 해소하고, 아이의 자기 긍정감과 자율성을 기르는 프로그램입니다.'
Update-File "academy_kids.html" @{
    $oldKids1 = $newKids1
    $oldKids2 = $newKids2
} $null

# 6. academy_weekly.html
Update-File "academy_weekly.html" @{
    '가격: 800,000원 / 4주 (주 1회, 120분)' = '기간: 4주 (주 1회, 120분)'
} @{
    '<div class="text-3xl font-bold text-kftaRed mb-6">800,000원<span class="text-lg text-gray-500 font-normal"> / 4주</span></div>' = ''
    '(<p class="text-sm text-gray-500">).*?800,000원 / 4주 \(주 1회, 120분\).*?(</p>)' = '${1}기간: 4주 (주 1회, 120분)$2'
}

# 7. academy_kpop.html
Update-File "academy_kpop.html" @{
    '가격: 800,000원 / 4주 (주 1회, 120분)' = '기간: 4주 (주 1회, 120분)'
} @{
    '<div class="text-3xl font-bold text-kftaRed mb-6">800,000원<span class="text-lg text-gray-500 font-normal"> / 4주</span></div>' = ''
    '(<p class="text-sm text-gray-500">).*?800,000원 / 4주 \(주 1회, 120분\).*?(</p>)' = '${1}기간: 4주 (주 1회, 120분)$2'
}
