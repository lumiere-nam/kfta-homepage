$template = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_scent.html", [System.Text.Encoding]::UTF8)

# Create Color Palette page
$colorPage = $template.Replace('시그니처 무드향', '나의 컬러 팔레트 맵')
$colorPage = $colorPage.Replace('보이지 않는 가장 강력한 스타일링', '내면과 외면의 완벽한 조화')
$colorPage = $colorPage.Replace('assets/class_signature_scent.png', 'assets/class_color_palette_new.jpg')
$colorPage = $colorPage.Replace('나만의 시그니처 무드향', '나의 컬러 팔레트 맵')
$colorPage = $colorPage.Replace('후각적 테라피', '미니 클래스')
$colorPage = $colorPage.Replace('시각적 스타일링에 더해 나만의 무드를 완성하는 후각적 테라피. 천연 에센셜 오일을 사용하여 그날의 감정과 TPO에 맞는 힐링 향수를 직접 조향해보는 원데이 클래스입니다.', '퍼스널컬러와 심리를 결합하여 짧은 시간 안에 나의 내면의 색과 외면의 색을 찾는 미니 클래스입니다.')
$colorPage = $colorPage.Replace('<li>개인 감정 및 무드 분석</li>
                <li>천연 에센셜 오일 시향 및 블렌딩</li>
                <li>나만의 시그니처 힐링 향수 제작 (50ml)</li>', '<li>퍼스널 컬러 및 심리 진단</li>
                <li>내면의 색과 외면의 색 매칭</li>
                <li>컬러 활용 스타일링 팁</li>')
$colorPage = $colorPage.Replace('?item=나만의 시그니처 무드향', '?item=나의 컬러 팔레트 맵')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_color.html", $colorPage, [System.Text.Encoding]::UTF8)

# Create Detox page
$detoxPage = $template.Replace('시그니처 무드향', '패션 마인드 디톡스 원데이')
$detoxPage = $detoxPage.Replace('보이지 않는 가장 강력한 스타일링', '옷장 속 감정을 비우는 시간')
$detoxPage = $detoxPage.Replace('assets/class_signature_scent.png', 'assets/class_mind_detox.png')
$detoxPage = $detoxPage.Replace('나만의 시그니처 무드향', '패션 마인드 디톡스 원데이')
$detoxPage = $detoxPage.Replace('후각적 테라피', '인지 오류 개선')
$detoxPage = $detoxPage.Replace('시각적 스타일링에 더해 나만의 무드를 완성하는 후각적 테라피. 천연 에센셜 오일을 사용하여 그날의 감정과 TPO에 맞는 힐링 향수를 직접 조향해보는 원데이 클래스입니다.', '패션에 대한 나의 인지 오류와 부정적인 언어 습관을 발견하고, 이를 긍정적으로 개선하여 자신감을 되찾는 원데이 클래스입니다.')
$detoxPage = $detoxPage.Replace('<li>개인 감정 및 무드 분석</li>
                <li>천연 에센셜 오일 시향 및 블렌딩</li>
                <li>나만의 시그니처 힐링 향수 제작 (50ml)</li>', '<li>패션 인지 오류 자가진단</li>
                <li>부정적 언어 습관 분석 및 교정</li>
                <li>자존감 회복을 위한 긍정 선언문 작성</li>')
$detoxPage = $detoxPage.Replace('?item=나만의 시그니처 무드향', '?item=패션 마인드 디톡스 원데이')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_detox.html", $detoxPage, [System.Text.Encoding]::UTF8)
