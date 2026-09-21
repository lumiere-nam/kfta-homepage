$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# 1. Move the string to the paragraph
$html = $html.Replace("힐링 향수를 직접 조향해보는 원데이 클래스입니다.</p>", "힐링 향수를 직접 조향해보는 원데이 클래스입니다. <span class=`"text-kftaRed font-bold`">(단, 2인 이상 신청가능)</span></p>")

# 2. Remove it from the price
$html = $html.Replace('100,000원<br><span class="text-xs text-gray-500 font-normal mt-1 block">(단, 2인 이상 신청가능)</span>', '100,000원')
# Also check if it was '가격: 100,000원' or something else
$html = $html.Replace('100,000원 (단, 2인 이상 신청가능)', '100,000원')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
