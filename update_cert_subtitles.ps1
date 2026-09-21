$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\certification.html", [System.Text.Encoding]::UTF8)

# Level 2
$html = [regex]::Replace($html, '<p class="font-bold text-lg mb-6">"감이 아니라 기준으로, 마음까지 함께 읽습니다."</p>', '')
# Level 3
$html = [regex]::Replace($html, '<p class="font-bold text-lg mb-6">"한 사람을, 4축 전체로 완성해서 읽습니다."</p>', '')
# Trainer
$html = [regex]::Replace($html, '<p class="font-bold text-lg mb-6">"개인 상담을 넘어 조직·기업 단위로 확장합니다."</p>', '')
# Master Trainer
$html = [regex]::Replace($html, '<p class="font-bold text-lg mb-6">"패션테라피 교육의 뿌리를 지역으로 넓히는, 협회 인증 교육자"</p>', '')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\certification.html", $html, [System.Text.Encoding]::UTF8)
