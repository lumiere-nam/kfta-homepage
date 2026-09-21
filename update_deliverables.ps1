$html1 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", [System.Text.Encoding]::UTF8)
$add1 = @"
    <h5 class="font-bold text-kftaGreen mt-10 border-b border-gray-200 pb-2 text-lg">무엇을 얻어갈 수 있나요? (제공 내역)</h5>
    <ul class="list-disc list-inside space-y-3 text-gray-700 pl-2 mt-4 bg-white p-6 rounded-xl border border-gray-100 shadow-sm">
        <li><strong>개인 맞춤형 컬러 처방전:</strong> 현재 심리 상태를 보완하고 에너지를 채워주는 나만의 힐링 컬러 리포트 제공</li>
        <li><strong>일상 적용 솔루션:</strong> 추천 컬러를 데일리 룩, 넥타이, 스카프, 인테리어 소품 등에 당장 적용할 수 있는 구체적인 코디법 안내</li>
        <li><strong>퍼스널 향수 (미니):</strong> 처방된 마인드 컬러에 어울리는 감정 치유용 아로마 롤온(또는 미니 향수) 1종 제작 및 증정</li>
        <li><strong>사후 관리:</strong> 2주 후 일상에서의 감정 변화와 컬러 활용도를 점검하는 온라인 피드백 1회</li>
    </ul>
</div>
"@
$html1 = $html1.Replace('</ul>
</div>', "</ul>`n$add1")
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", $html1, [System.Text.Encoding]::UTF8)

$html3 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting_3.html", [System.Text.Encoding]::UTF8)
$add3 = @"
    <h5 class="font-bold text-kftaGreen mt-10 border-b border-gray-200 pb-2 text-lg">무엇을 얻어갈 수 있나요? (제공 내역)</h5>
    <ul class="list-disc list-inside space-y-3 text-gray-700 pl-2 mt-4 bg-white p-6 rounded-xl border border-gray-100 shadow-sm">
        <li><strong>퍼스널 맞춤 룩북 (Look-book):</strong> 나의 체형과 컬러, 라이프스타일을 분석하여 기획된 세상에 하나뿐인 나만의 스타일 가이드북 (PDF 제공)</li>
        <li><strong>옷장 심폐소생 솔루션:</strong> 가져오신 기존 소장 아이템들의 활용 가능 여부를 진단하고, 200% 활용할 수 있는 컬러 배색 및 믹스매치 코칭</li>
        <li><strong>실전 쇼핑 리스트:</strong> 룩북을 완성하기 위해 추가로 구매하면 좋은 핵심 아이템(신발, 이너, 액세서리 등) 구체적 추천 리스트</li>
        <li><strong>TPO 코칭:</strong> 다가오는 중요한 일정(면접, 데이트, 발표 등)을 위한 최적의 1착장 스타일링 세팅</li>
    </ul>
</div>
"@
$html3 = $html3.Replace('</ul>
</div>', "</ul>`n$add3")
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_3.html", $html3, [System.Text.Encoding]::UTF8)
