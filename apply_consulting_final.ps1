# 1. Update consulting.html Program title
$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting.html", [System.Text.Encoding]::UTF8)
$c = $c -replace 'Consulting Program</h1>', 'Consulting</h1>'
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting.html", $c, [System.Text.Encoding]::UTF8)

# 2. Update academy_oneday_closet.html image
$ac = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_closet.html", [System.Text.Encoding]::UTF8)
$ac = $ac -replace 'src="assets/class_closet_diet.jpg"', 'src="https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"'
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_closet.html", $ac, [System.Text.Encoding]::UTF8)

# 3. Update consulting_3.html title and checkout link
$c3 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting_3.html", [System.Text.Encoding]::UTF8)
$c3 = $c3 -replace '패션 & 뷰티 컨설팅', '퍼스널 이미지 브랜딩 컨설팅'
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_3.html", $c3, [System.Text.Encoding]::UTF8)

# 4. Update checkout.html pricing logic
$ch = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\checkout.html", [System.Text.Encoding]::UTF8)

$oldLogic = '(?s)else if\(itemName\.includes\("Master Trainer"\) \|\| itemName\.includes\("마스터 트레이너"\)\) price = "3,000,000";\s*else price = "1,000,000"; // default fallback'
$newLogic = @"
else if(itemName.includes("Master Trainer") || itemName.includes("마스터 트레이너")) price = "3,000,000";
            else if(itemName.includes("마인드 컬러 컨설팅")) price = "250,000";
            else if(itemName.includes("옷장 다이어트")) price = "400,000";
            else if(itemName.includes("퍼스널 이미지 브랜딩 컨설팅")) price = "500,000";
            else if(itemName.includes("엄마프사 프로젝트")) price = "400,000";
            else if(itemName.includes("나의 컬러 팔레트 맵")) price = "150,000";
            else if(itemName.includes("패션 마인드 디톡스 원데이")) price = "120,000";
            else price = "1,000,000"; // default fallback
"@

$ch = [regex]::Replace($ch, $oldLogic, $newLogic)
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\checkout.html", $ch, [System.Text.Encoding]::UTF8)

