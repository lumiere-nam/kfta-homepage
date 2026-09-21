$c5 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_kids.html", [System.Text.Encoding]::UTF8)
$oldKids1 = '나뭇잎, 꽃, 열매 등 자연의 재료와 다양한 미술 용품들을 활용해 화폭에 콜라주 작업을 하며 나만의 취향과 감정을 표현하는 창의 미술 테라피입니다.'
$newKids1 = '나뭇잎, 꽃, 열매 등 자연의 재료와 원단 스와치(원단 샘플), 그리고 다양한 미술 용품들을 활용해 화폭에 콜라주 작업을 하며 나만의 취향과 감정을 표현하는 창의 패션테라피입니다.'
$oldKids2 = '정해진 정답 없이 나만의 색채로 패션 아이템을 채색하며 스트레스를 해소하고, 아이의 자기 긍정감과 자율성을 기르는 프로그램입니다.'
$newKids2 = '정해진 정답 없이 나만의 색채로 다양한 패션 실루엣과 스타일링 요소를 채색하며 스트레스를 해소하고, 아이의 자기 긍정감과 자율성을 기르는 프로그램입니다.'
$c5 = $c5.Replace($oldKids1, $newKids1)
$c5 = $c5.Replace($oldKids2, $newKids2)
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_kids.html", $c5, [System.Text.Encoding]::UTF8)
