$a = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Replace the Aroma card
$oldAromaTitle = '<h4 class="font-bold text-lg text-kftaGreen mb-3">마인드풀 아로마 블렌딩</h4>'
$newAromaTitle = '<h4 class="font-bold text-lg text-kftaGreen mb-3">감정 아로마테라피</h4>'
$oldAromaDesc = '<p class="text-sm text-gray-600 mb-6 flex-grow">식물에서 추출한 천연 에센셜 오일의 향기를 통해 지친 마음을 안정시키고 스트레스를 완화하는 힐링 아로마 클래스입니다.</p>'
$newAromaDesc = '<p class="text-sm text-gray-600 mb-6 flex-grow">10가지 감정 오일의 향기를 통해 현재의 심리 상태를 진단하고, 지친 마음을 건강한 중심점으로 회복시켜 주는 힐링 테라피입니다.</p>'

$a = $a.Replace($oldAromaTitle, $newAromaTitle)
$a = $a.Replace($oldAromaDesc, $newAromaDesc)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $a, [System.Text.Encoding]::UTF8)
