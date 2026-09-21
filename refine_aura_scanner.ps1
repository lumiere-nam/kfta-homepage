$html1 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", [System.Text.Encoding]::UTF8)

# We will replace everything from `<div class="border-t border-gray-100 pt-16 mt-16">` down to `<!-- Bottom CTA Bar -->`
$startMarker = '<div class="border-t border-gray-100 pt-16 mt-16">'
$endMarker = '<!-- Bottom CTA Bar -->'

$startIndex = $html1.IndexOf($startMarker)
$endIndex = $html1.IndexOf($endMarker)

$before = $html1.Substring(0, $startIndex)
$after = $html1.Substring($endIndex)

$newSection = @"
<div class="border-t border-gray-100 pt-16 mt-16">
    <h4 class="font-bold text-2xl text-kftaGreen mb-8 text-center">프로그램 상세 안내</h4>
    <div class="bg-gray-50 rounded-2xl p-8 lg:p-12">
        <div class="space-y-8 text-gray-700 leading-relaxed text-justify max-w-3xl mx-auto">
            
            <div>
                <p class="text-lg mb-4">혹시 <strong>무기력하거나 원인 모를 스트레스</strong>에 시달리고 계신가요?</p>
                <p>우리가 무의식적으로 고르는 옷의 색상은 현재의 심리 상태와 에너지를 고스란히 반영합니다. 마인드 컬러 컨설팅은 단순한 외면의 퍼스널 컬러 진단을 넘어, 당신의 <strong>'마음의 색'</strong>을 읽어내는 KFTA만의 독보적인 멘탈 케어 프로그램입니다.</p>
            </div>

            <div class="bg-white p-8 rounded-2xl shadow-sm border border-gray-100 mt-8 mb-8">
                <h5 class="font-bold text-xl text-gray-800 mb-4 text-center">AURA ENERGY SCANNER 진단</h5>
                <p class="text-center text-sm text-gray-500 mb-6">에너지사이언스에서 개발한 최첨단 측정기로 나의 MIND-BODY 심신상태를 눈으로 확인하세요.</p>
                
                <img src="assets/aura_scanner_2.png" alt="AURA ENERGY SCANNER" class="w-full max-w-2xl mx-auto rounded-xl mb-6">
                
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6 text-sm">
                    <div class="bg-gray-50 p-5 rounded-xl">
                        <strong class="block text-kftaGreen mb-2 text-base">양손 측정 시스템</strong>
                        생체 임피던스를 활용해 좌우 뇌와 신체의 불균형, 미세한 전기적 신호를 정밀하게 스캐닝합니다.
                    </div>
                    <div class="bg-gray-50 p-5 rounded-xl">
                        <strong class="block text-kftaGreen mb-2 text-base">정확한 오라 이미지화</strong>
                        눈에 보이지 않는 나의 감정과 에너지를 직관적인 컬러(Aura)로 변환하여 보여줍니다.
                    </div>
                </div>
            </div>

            <div>
                <p>과학적인 데이터(AURA SCANNER)와 색채 심리학을 결합하여, 현재 나에게 결핍된 에너지가 무엇인지 진단합니다. 이를 바탕으로 일상에서 옷과 소품의 색상을 활용해 <strong>스스로 감정을 다스리고 회복할 수 있는 맞춤형 힐링 컬러 솔루션</strong>을 제공합니다.</p>
            </div>

            <div class="mt-8">
                <p class="font-bold text-kftaGreen border-l-4 border-kftaRed pl-4 mb-4">이런 분들께 추천합니다!</p>
                <ul class="list-disc list-inside space-y-2 text-gray-600 pl-2">
                    <li>반복되는 일상에 지쳐 새로운 에너지가 필요하신 분</li>
                    <li>최근 들어 유독 무채색이나 어두운 계열의 옷만 찾게 되는 분</li>
                    <li>패션과 색상을 통해 긍정적인 심리 변화를 경험하고 싶으신 분</li>
                </ul>
            </div>

            <div class="mt-12">
                <h5 class="font-bold text-kftaGreen border-b border-gray-200 pb-2 text-lg">무엇을 얻어갈 수 있나요? (제공 내역)</h5>
                <ul class="list-disc list-inside space-y-3 text-gray-700 pl-2 mt-4 bg-white p-6 rounded-xl border border-gray-100 shadow-sm">
                    <li><strong>개인 맞춤형 컬러 처방전:</strong> 현재 심리 상태를 보완하고 에너지를 채워주는 나만의 힐링 컬러 리포트 제공</li>
                    <li><strong>일상 적용 솔루션:</strong> 추천 컬러를 데일리 룩, 넥타이, 스카프, 인테리어 소품 등에 당장 적용할 수 있는 구체적인 코디법 안내</li>
                    <li><strong>퍼스널 향수 (미니):</strong> 처방된 마인드 컬러에 어울리는 감정 치유용 아로마 롤온(또는 미니 향수) 1종 제작 및 증정</li>
                    <li><strong>사후 관리:</strong> 2주 후 일상에서의 감정 변화와 컬러 활용도를 점검하는 온라인 피드백 1회</li>
                </ul>
            </div>
            
        </div>
    </div>
</div>
            </div>

"@

# Oh wait, I also need to remove the previous "AURA ENERGY SCANNER" block that I injected earlier which was right before the "프로그램 상세 안내".
# Let's just remove it using regex.
$before = [regex]::Replace($before, '(?s)<h5 class="font-bold text-kftaGreen mt-12 border-b border-gray-200 pb-2 text-xl">특별한 진단 프로그램.*?</div>', '')

$finalHtml = $before + $newSection + $after
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", $finalHtml, [System.Text.Encoding]::UTF8)
