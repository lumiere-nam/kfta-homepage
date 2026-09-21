$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Revert images for Weekly Talks based on episode number
$map = @{
    '[1화] 책' = 'assets/class_weekly_reading2.png'
    '[2화] 애착_스카프' = 'assets/class_weekly_scarf2.png'
    '[3화] 애착_벨트' = 'assets/class_weekly_belt.png'
    '[4화] 애착_가방' = 'assets/class_weekly_bag2.png'
    '[5화] 애착_안경' = 'assets/class_weekly_shoes.png'  # originally it was shoes.png for some reason
    '[6화] 애착_신발' = 'assets/class_weekly_framework.png' # originally framework.png
    '[7화] 애착_주얼리' = 'https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?q=80&w=600&auto=format&fit=crop'
    '[8화] 애착_시그니처' = 'assets/class_weekly_framework.png'
}

foreach ($key in $map.Keys) {
    # Match the image tag preceding the episode title (like [1화] 책 읽는 시간...)
    # We use a pattern that looks for [X화] and the next word to disambiguate from K-Pop
    $epNum = $key.Substring(1, 2)
    $firstWord = $key.Split(' ')[1]
    
    $pattern = '(?s)<img src="[^"]+" class="w-full h-full object-cover" alt="[^"]*">(?=</div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4[^>]+>\[' + $epNum + '\] ' + $firstWord + ')'
    $replacement = '<img src="' + $map[$key] + '" class="w-full h-full object-cover" alt="클래스 이미지">'
    $html = [regex]::Replace($html, $pattern, $replacement)
}

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
